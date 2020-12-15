import 'package:flutter/cupertino.dart';

class TextFeildToggler extends ChangeNotifier {
  int currentIndex = 0;
  bool replyOrComment = false;
  String commentId = '';
  String replyingTo = '';
  int replyCount = 0;
  void toggling(
      String commentId, String replyingTo, bool flagged, int replyCount) {
    print(flagged);
    // if (commentId == this.commentId || this.commentId == '')
    replyOrComment = flagged;
    this.commentId = commentId;
    this.replyingTo = replyingTo;
    this.replyCount = replyCount;
    notifyListeners();
  }

  void changeIndex(int currentIndex) {
    this.currentIndex = currentIndex;
    notifyListeners();
  }
}
