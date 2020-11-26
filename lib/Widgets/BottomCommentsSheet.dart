import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cook_chef/Firestore/CloudFirestore.dart';
import 'package:provider/provider.dart';

final _firebaseFirestore = FirebaseFirestore.instance;

class BottomCommentsSheetBuilder extends StatelessWidget {
  final String postId;

  BottomCommentsSheetBuilder({this.postId});
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
          padding: EdgeInsets.symmetric(vertical: 10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CommentsStream(
                postId: postId,
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0, bottom: 10.0, top: 5.0),
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
                      height: 4.0,
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
                              await context
                                  .read<CloudFirestore>()
                                  .addingComments(
                                      textEditingController.text, postId);
                              textEditingController.clear();
                            },
                            child: Text('Share'),
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
            final username = comment.get('username');
            final likes = comment.get('likes');
            final commentId = comment.get('commentId');
            final mycomment = comment.get('comment');
            commentsList.add(
              CommentTile(
                comment: mycomment,
                username: username,
                commentId: commentId,
                likes: likes,
                postId: postId,
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
  CommentTile(
      {this.username, this.comment, this.commentId, this.likes, this.postId});

  @override
  _CommentTileState createState() => _CommentTileState();
}

class _CommentTileState extends State<CommentTile> {
  CloudFirestore _cloudFirestore = CloudFirestore();
  bool increment = false;
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(bottom: 8.0),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10.0, top: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/icons/ingredients.png'),
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
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: _width * 0.70,
                      child: Text(
                        widget.comment,
                        softWrap: true,
                        maxLines: 3,
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                    // Text('💗 15'),
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
                                              widget.commentId);
                                    } else {
                                      await _cloudFirestore
                                          .incrementingCommentLikes(
                                              widget.postId,
                                              widget.likes - 2,
                                              widget.commentId);
                                    }
                                  },
                                  child: Icon(Icons.favorite_border)),
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
                        Container(
                          child: Row(
                            children: <Widget>[
                              SvgPicture.asset(
                                'assets/icons/comment.svg',
                                height: 14,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('1'),
                            ],
                          ),
                        ),
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
