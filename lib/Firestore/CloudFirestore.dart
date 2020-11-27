import 'package:cook_chef/Firestore/CloudStorage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';

FirebaseAuth auth = FirebaseAuth.instance;
CollectionReference user;
CollectionReference feeds;

class CloudFirestore {
  String uid = auth.currentUser.uid.toString();
  CloudStorage _cloudStorage = CloudStorage();
  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  Future<void> userSetUp(String userName) async {
    user = FirebaseFirestore.instance.collection('Users');
    //user.doc(uid).set({'username': userName, 'uid': uid});
    String fcmToken = await _firebaseMessaging.getToken();
    await user.doc(uid).set({
      'username': userName,
      'uid': uid,
      'imageLink':
          'https://firebasestorage.googleapis.com/v0/b/cook-chef.appspot.com/o/Users%2Fprofile-user.png?alt=media&token=f156591e-9aa4-4c42-8b28-0ce36eef7d5c',
      'bio': 'Here you can add his/her bio',
      'fcmToken': fcmToken,
    });
    return null;
  }

  Future<void> addingPost(String recipe, File _image) async {
    feeds = FirebaseFirestore.instance.collection('feeds');
    Timestamp time = Timestamp.now();
    String username = await userName();
    DocumentReference post = await feeds.add({
      'username': username,
      'recipe': recipe,
      'timestamp': time,
      'likes': 0,
      'uid': uid,
    });
    String imageUrl = await _cloudStorage.uploadFile(_image, 'posts', post.id);
    await feeds.doc(post.id).update({'imageUrl': imageUrl, 'postId': post.id});
    return null;
  }

  Future<String> addingComments(String comment, String id) async {
    String username = await userName();

    DocumentReference commented = await FirebaseFirestore.instance
        .collection('feeds')
        .doc(id)
        .collection('comments')
        .add({
      'comment': comment,
      'username': username,
      'likes': 0,
      'timestamp': Timestamp.now()
    });
    await FirebaseFirestore.instance
        .collection('feeds')
        .doc(id)
        .collection('comments')
        .doc(commented.id)
        .update({'commentId': commented.id});
    return commented.id;
  }

  Future<void> incrementingPostLikes(String id, int like, bool liked) async {
    await FirebaseFirestore.instance
        .collection('feeds')
        .doc(id)
        .collection('likes')
        .doc(uid)
        .set({'liked': liked});
    await FirebaseFirestore.instance
        .collection('feeds')
        .doc(id)
        .update({'likes': like + 1});
  }

  Future<void> incrementingCommentLikes(
      String postId, int like, String commentId, bool liked) async {
    await FirebaseFirestore.instance
        .collection('feeds')
        .doc(postId)
        .collection('comments')
        .doc(commentId)
        .collection('likes')
        .doc(uid)
        .set({'liked': liked});
    await FirebaseFirestore.instance
        .collection('feeds')
        .doc(postId)
        .collection('comments')
        .doc(commentId)
        .update({'likes': like + 1});
  }

  Future<void> updateUser(String username, String bio, String imageLink) async {
    // print(await user.get());
    //print(uid);
    await FirebaseFirestore.instance.collection('Users').doc(uid).update(
        {'username': username, 'bio': bio, 'uid': uid, 'imageLink': imageLink});
  }

  Future<String> userName() async {
    DocumentSnapshot documentSnapshot =
        await FirebaseFirestore.instance.collection('Users').doc(uid).get();
    return documentSnapshot.data()['username'];
  }

  Future<String> imageUrl() async {
    DocumentSnapshot documentSnapshot =
        await FirebaseFirestore.instance.collection('Users').doc(uid).get();
    return documentSnapshot.data()['imageLink'];
  }
}
