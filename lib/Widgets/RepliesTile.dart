import 'package:flutter/material.dart';
import 'package:cook_chef/Models/AccountPageArgument.dart';
import 'package:cook_chef/Screens/Account/AccountPage.dart';

class RepliesTile extends StatelessWidget {
  final String username;
  final String comment;
  final String commentId;
  final String postId;
  final String userImage;
  final String replyingUserId;
  final bool onAccountPage;
  RepliesTile(
      {this.username,
      this.comment,
      this.commentId,
      this.postId,
      this.userImage,
      this.replyingUserId,
      this.onAccountPage});

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
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(userImage),
          ),
          SizedBox(
            width: 8.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  if (onAccountPage != true)
                    Navigator.pushNamed(context, AccountPage.id,
                        arguments:
                            AccountArgument(outerUserUid: replyingUserId));
                },
                child: Text(
                  username,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
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
