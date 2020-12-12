import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cook_chef/Models/CommentsTextFeild.dart';
import 'package:cook_chef/Firestore/CloudFirestore.dart';

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
