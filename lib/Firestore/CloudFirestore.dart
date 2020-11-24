import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseAuth auth = FirebaseAuth.instance;
CollectionReference user;
CollectionReference feeds;

class CloudFirestore {
  String uid = auth.currentUser.uid.toString();

  Future<void> userSetUp(String userName) {
    user = FirebaseFirestore.instance.collection('Users');
    user.doc(uid).set({'username': userName, 'uid': uid});

    return null;
  }

  Future<void> addingPost(
      String recipe, String username, String imgName, String id) {
    feeds = FirebaseFirestore.instance.collection('feeds');
    Timestamp time = Timestamp.now();
    feeds.doc(id).set({
      'username': username,
      'imgname': imgName,
      'recipe': recipe,
      'timestamp': time,
      'likes': 0
    });
    return null;
  }

  Future<void> addingComments(
      String comment, String username, String id, String category) {
    feeds.doc(id).collection('comments').add({
      'comment': comment,
      'username': username,
      'category': category,
      'likes': 0
    });
  }

  Future<void> incrementingPostLikes(String id, int like) {
    feeds.doc(id).update({'likes': like + 1});
  }

  Future<void> incrementingCommentLikes(String id, int like) {
    feeds.doc(id).collection('comments').doc().update({'likes': like + 1});
  }

  Future<void> updateUser(String username, String bio) async {
    // print(await user.get());
    print(uid);
    await FirebaseFirestore.instance
        .collection('Users')
        .doc(uid)
        .update({'username': username, 'bio': bio, 'uid': uid});
  }
}
