import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'RepliesTile.dart';
import 'package:provider/provider.dart';

FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

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
