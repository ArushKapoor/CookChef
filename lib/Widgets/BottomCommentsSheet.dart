import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cook_chef/Auth/AuthenticationService.dart';
import 'package:cook_chef/Models/CommentsTextFeild.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:cook_chef/Firestore/CloudFirestore.dart';
import 'package:provider/provider.dart';
import 'CommentTile.dart';
import 'TextFeildToggler.dart';

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
