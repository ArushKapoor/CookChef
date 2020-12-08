import 'package:flutter/cupertino.dart';

class TextFeildToggler extends ChangeNotifier {
  bool replyOrComment = false;
  String commentId = '';
  String replyingTo = '';
  int replyingLength = 1;
  void toggling(String commentId, String replyingTo) {
    if (commentId == this.commentId) replyOrComment = !replyOrComment;
    this.commentId = commentId;
    this.replyingTo = replyingTo;
    notifyListeners();
  }

  void changingLengthOfReplies(int length) {
    replyingLength = length;
  }
}
