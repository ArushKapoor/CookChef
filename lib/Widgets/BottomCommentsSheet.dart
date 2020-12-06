import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cook_chef/Auth/AuthenticationService.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:cook_chef/Firestore/CloudFirestore.dart';
import 'package:provider/provider.dart';

final _firebaseFirestore = FirebaseFirestore.instance;

class BottomCommentsSheetBuilder extends StatelessWidget {
  final String postId;
  final int commentsCount;

  BottomCommentsSheetBuilder({this.postId, this.commentsCount});
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    TextEditingController textEditingController = TextEditingController();
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
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 10.0,
                  bottom: 10.0,
                ),
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
                      'Type Your Comment',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      width: _width * 0.90,
                      child: TextField(
                        controller: textEditingController,
                        autofocus: true,
                        cursorColor: Colors.lightBlueAccent,
                        cursorRadius: Radius.circular(3),
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          focusColor: Colors.lightBlueAccent,
                          hintText: 'Enter your comment',
                          suffix: GestureDetector(
                            onTap: () async {
                              print(textEditingController.text);
                              if (textEditingController.text.isNotEmpty)
                                await context
                                    .read<CloudFirestore>()
                                    .addingComments(textEditingController.text,
                                        postId, commentsCount);
                              textEditingController.clear();
                            },
                            child: Text('Share',
                                style: TextStyle(
                                    color: Color(0xff08a963),
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CommentsStream extends StatelessWidget {
  final String postId;
  CommentsStream({this.postId});
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

            QuerySnapshot snapshots = context.watch<QuerySnapshot>();
            String meraUserImage, meraUserName;
            int nOfLikes = likes['likes'];
            bool liked = likes['$uid'];
            final users = snapshots.docs;
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
  CommentTile(
      {this.username,
      this.comment,
      this.commentId,
      this.likes,
      this.postId,
      this.userImage,
      this.liked,
      this.likesMap});

  @override
  _CommentTileState createState() => _CommentTileState();
}

class _CommentTileState extends State<CommentTile> {
  CloudFirestore _cloudFirestore = CloudFirestore();
  bool increment = false;
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
                                  increment = !increment;
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
                          width: _width * 0.4,
                        ),
                        // Container(
                        //   child: Row(
                        //     children: <Widget>[
                        //       SvgPicture.asset(
                        //         'assets/icons/comment.svg',
                        //         height: 14,
                        //       ),
                        //       SizedBox(
                        //         width: 5,
                        //       ),
                        //       Text('1'),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                )
              ],
            ),
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
