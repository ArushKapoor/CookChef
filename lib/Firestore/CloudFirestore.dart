import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseAuth auth = FirebaseAuth.instance;
CollectionReference user;
CollectionReference feeds;

class CloudFirestore {
  String uid = auth.currentUser.uid.toString();

  Future<void> userSetUp(String userName) async {
    user = FirebaseFirestore.instance.collection('Users');
    //user.doc(uid).set({'username': userName, 'uid': uid});
    await user.doc(uid).set({
      'username': userName,
      'uid': uid,
      'imageLink':
          'https://firebasestorage.googleapis.com/v0/b/cook-chef.appspot.com/o/Users%2Fprofile-user.png?alt=media&token=f156591e-9aa4-4c42-8b28-0ce36eef7d5c',
      'bio': 'Here you can add his/her bio'
    });
    return null;
  }

  Future<void> addingPost(
      String recipe, String username, String imgName, String id) async {
    feeds = FirebaseFirestore.instance.collection('feeds');
    Timestamp time = Timestamp.now();

    DocumentReference post = await feeds.add({
      'username': username,
      'imgname': imgName,
      'recipe': recipe,
      'timestamp': time,
      'likes': 0
    });
    feeds.doc(post.id).update({'imageName': post.id});
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

  Future<void> updateUser(String username, String bio, String imageLink) async {
    // print(await user.get());
    print(uid);
    await FirebaseFirestore.instance.collection('Users').doc(uid).update(
        {'username': username, 'bio': bio, 'uid': uid, 'imageLink': imageLink});
  }
}
