import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cook_chef/Auth/AuthenticationService.dart';
import 'package:cook_chef/Models/CommentsTextFeild.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:cook_chef/Firestore/CloudFirestore.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';

final _firebaseFirestore = FirebaseFirestore.instance;

class BottomCommentsSheetBuilder extends StatelessWidget {
  final String postId;
  final int commentsCount;
  final bool isThisUser;
  BottomCommentsSheetBuilder(
      {this.postId, this.commentsCount, this.isThisUser});
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    TextEditingController textEditingController = TextEditingController();
    bool isReplying = Provider.of<TextFeildToggler>(context).replyOrComment;
    String commentId = Provider.of<TextFeildToggler>(context).commentId;
    String replyingTo = Provider.of<TextFeildToggler>(context).replyingTo;

    return Container(
      padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom, top: _height * .24),
      child: Container(
        color: Color(0xFF757575),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CommentsStream(
                postId: postId,
                isThisUser: isThisUser,
              ),
              ToggledTextFeild(
                commentsCount: commentsCount,
                width: _width,
                textEditingController: textEditingController,
                postId: postId,
                isReplying: isReplying,
                commentId: commentId,
                replyingTo: replyingTo,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ToggledTextFeild extends StatelessWidget {
  const ToggledTextFeild({
    Key key,
    @required this.commentsCount,
    @required double width,
    @required this.textEditingController,
    @required this.postId,
    this.isReplying,
    this.commentId,
    this.replyingTo,
  })  : _width = width,
        super(key: key);

  final int commentsCount;
  final double _width;
  final TextEditingController textEditingController;
  final String postId;
  final bool isReplying;
  final String commentId;
  final String replyingTo;

  @override
  Widget build(BuildContext context) {
    int replyCount = Provider.of<TextFeildToggler>(context).replyCount;
    int commentCount = commentsCount;
    return Container(
      padding: (commentsCount != 0)
          ? EdgeInsets.only(
              left: 10.0,
              bottom: 10.0,
              right: 10.0,
            )
          : EdgeInsets.only(),
      margin: (commentsCount == 0)
          ? EdgeInsets.only(
              left: 10.0,
              bottom: 10.0,
              right: 10.0,
            )
          : EdgeInsets.only(),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey[300]),
        ),
        color: Colors.white,
      ),
      width: _width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 2.0,
          ),
          Text(
            isReplying ? 'Replying to $replyingTo' : 'Type Your Comment',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
          ),
          Container(
            width: _width * 0.90,
            child: TextField(
              controller: textEditingController,
              autofocus: true,
              cursorColor: Colors.lightBlueAccent,
              cursorRadius: Radius.circular(3),
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                focusColor: Colors.lightBlueAccent,
                hintText:
                    isReplying ? 'Enter your reply' : 'Enter your comment',
                suffix: GestureDetector(
                  onTap: () async {
                    print(textEditingController.text);
                    if (textEditingController.text.isNotEmpty) if (isReplying) {
                      await context
                          .read<CloudFirestore>()
                          .addingRepliesToComment(postId, commentId,
                              textEditingController.text, replyCount);
                      replyCount++;
                    } else {
                      await context.read<CloudFirestore>().addingComments(
                          textEditingController.text, postId, commentCount);
                      commentCount++;
                    }

                    textEditingController.clear();
                  },
                  child: Text(isReplying ? 'Reply' : 'Share',
                      style: TextStyle(
                          color: Color(0xff08a963),
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CommentsStream extends StatelessWidget {
  final String postId;
  final bool isThisUser;
  CommentsStream({this.postId, this.isThisUser});
  @override
  Widget build(BuildContext context) {
    String uid = context.watch<AuthenticationService>().uniqueId;
    return StreamBuilder<QuerySnapshot>(
        stream: _firebaseFirestore
            .collection('feeds')
            .doc(postId)
            .collection('comments')
            .orderBy('timestamp')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.green,
              ),
            );
          }
          final comments = snapshot.data.docs;
          List<CommentTile> commentsList = [];
          for (var comment in comments) {
            Map likes = comment.get('likes');
            final commentId = comment.id;
            final mycomment = comment.get('comment');
            final commentUserId = comment.get('uid');
            final repliesCount = comment.get('replyCount');
            QuerySnapshot snapshots = context.watch<QuerySnapshot>();
            String meraUserImage, meraUserName;
            int nOfLikes = likes['likes'];
            bool liked = likes['$uid'];

            final users = snapshots.docs;
            int totalComments = comments.length;
            for (var user in users) {
              final auser = user.get('uid');
              if (auser == commentUserId) {
                meraUserImage = user.get('imageLink');
                meraUserName = user.get('username');
              }
            }
            commentsList.add(
              CommentTile(
                comment: mycomment,
                username: meraUserName,
                commentId: commentId,
                likes: nOfLikes,
                postId: postId,
                userImage: meraUserImage,
                liked: liked,
                likesMap: likes,
                isThisUser: isThisUser,
                replyCount: repliesCount,
                deletingCommentCallback: () async {
                  await context
                      .read<CloudFirestore>()
                      .deleteComment(postId, commentId, totalComments);
                },
              ),
            );
          }
          return Flexible(
            fit: FlexFit.loose,
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: commentsList,
            ),
          );
        });
  }
}

class CommentTile extends StatefulWidget {
  final String username;
  final String comment;
  final int likes;
  final String commentId;
  final String postId;
  final String userImage;
  final bool liked;
  final Map likesMap;
  final bool isThisUser;
  final int replyCount;
  final Function deletingCommentCallback;
  CommentTile(
      {this.username,
      this.comment,
      this.commentId,
      this.likes,
      this.postId,
      this.userImage,
      this.liked,
      this.likesMap,
      this.isThisUser,
      this.replyCount,
      this.deletingCommentCallback});

  @override
  _CommentTileState createState() => _CommentTileState();
}

class _CommentTileState extends State<CommentTile> {
  CloudFirestore _cloudFirestore = CloudFirestore();
  bool increment = false;
  bool expandFlag = false;
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    if (widget.liked != null) increment = widget.liked;
    return Container(
      margin: EdgeInsets.only(bottom: 8.0),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10.0, top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(widget.userImage),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.username,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: _width * 0.70,
                      child: Text(
                        widget.comment,
                        softWrap: true,
                        maxLines: 3,
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    // Text('💗 15'),
                    SizedBox(height: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () async {
                                  setState(() {
                                    increment = !increment;
                                  });

                                  if (increment) {
                                    await _cloudFirestore
                                        .incrementingCommentLikes(
                                            widget.postId,
                                            widget.likes,
                                            widget.commentId,
                                            increment,
                                            widget.likesMap);
                                  } else {
                                    await _cloudFirestore
                                        .incrementingCommentLikes(
                                            widget.postId,
                                            widget.likes - 2,
                                            widget.commentId,
                                            increment,
                                            widget.likesMap);
                                  }
                                },
                                child: increment
                                    ? Icon(Icons.favorite,
                                        color: Color(0xff08a963), size: 25)
                                    : Icon(Icons.favorite_outline_sharp,
                                        size: 20
                                        // color: Colors.greenAccent,
                                        ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('${widget.likes}'),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: _width * 0.05,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              expandFlag = !expandFlag;
                            });

                            Provider.of<TextFeildToggler>(context,
                                    listen: false)
                                .toggling(widget.commentId, widget.username,
                                    expandFlag, widget.replyCount);
                          },
                          child: Container(
                            child: Row(
                              children: <Widget>[
                                SvgPicture.asset(
                                  'assets/icons/comment.svg',
                                  height: _width * 0.06,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('${widget.replyCount}'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                if (widget.isThisUser)
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: widget.deletingCommentCallback,
                  ),
              ],
            ),
          ),
          ExpandableContainer(
            expanded: expandFlag,
            postId: widget.postId,
            commentId: widget.commentId,
            username: widget.username,
            replyCount: widget.replyCount,
          ),
          Container(
            height: 1,
            width: _width,
            color: Colors.grey[200],
          ),
        ],
      ),
    );
  }
}

class ExpandableContainer extends StatelessWidget {
  final bool expanded;
  final String username;
  final String commentId;
  final String postId;
  final int replyCount;
  ExpandableContainer(
      {this.expanded,
      this.postId,
      this.commentId,
      this.username,
      this.replyCount});

  @override
  Widget build(BuildContext context) {
    if (expanded && replyCount > 0)
      return AnimatedContainer(
        duration: Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        //width: screenWidth,

        child: Container(
          child: StreamBuilder<QuerySnapshot>(
            stream: _firebaseFirestore
                .collection('feeds')
                .doc(postId)
                .collection('comments')
                .doc(commentId)
                .collection('replies')
                .orderBy('timestamp')
                .snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.green,
                  ),
                );
              }
              var replies = snapshot.data.docs;
              //print(lengthOfReplies);
              List<RepliesTile> replyingList = [];
              for (var reply in replies) {
                final userUid = reply.get('uid');
                final commentReply = reply.get('reply');
                QuerySnapshot snapshots = context.watch<QuerySnapshot>();
                String meraUserImage, meraUserName;
                // print(commentReply);
                final users = snapshots.docs;
                for (var user in users) {
                  final auser = user.get('uid');
                  if (auser == userUid) {
                    meraUserImage = user.get('imageLink');
                    meraUserName = user.get('username');
                  }
                }
                replyingList.add(
                  RepliesTile(
                    comment: commentReply,
                    commentId: commentId,
                    postId: postId,
                    userImage: meraUserImage,
                    username: meraUserName,
                  ),
                );
              }
              return Column(
                children: replyingList,
              );
            },
          ),
        ),
      );
    else
      return SizedBox();
  }
}

class RepliesTile extends StatelessWidget {
  final String username;
  final String comment;
  final String commentId;
  final String postId;
  final String userImage;

  RepliesTile({
    this.username,
    this.comment,
    this.commentId,
    this.postId,
    this.userImage,
  });

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(left: _width * 0.2, top: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(userImage),
          ),
          SizedBox(
            width: 8.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                username,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: _width * 0.60,
                child: Text(
                  comment,
                  softWrap: true,
                  maxLines: 3,
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
