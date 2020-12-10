import 'package:cook_chef/Firestore/CloudStorage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';

FirebaseAuth auth = FirebaseAuth.instance;
CollectionReference user;
CollectionReference feeds;
final _firestore = FirebaseFirestore.instance;

class CloudFirestore {
  String uid = auth.currentUser.uid.toString();
  CloudStorage _cloudStorage = CloudStorage();
  Stream<QuerySnapshot> userInfo() {
    return FirebaseFirestore.instance.collection('Users').snapshots();
  }

  Stream<QuerySnapshot> likedInfo({String postId}) {
    return FirebaseFirestore.instance
        .collection('feeds')
        .doc(postId)
        .collection('likes')
        .snapshots();
  }

  Future<void> userSetUp(String userName) async {
    user = FirebaseFirestore.instance.collection('Users');
    //user.doc(uid).set({'username': userName, 'uid': uid});
    await user.doc(uid).set({
      'username': userName,
      'uid': uid,
      'imageLink':
          'https://firebasestorage.googleapis.com/v0/b/cook-chef.appspot.com/o/Users%2Fprofile-user.png?alt=media&token=f156591e-9aa4-4c42-8b28-0ce36eef7d5c',
      'bio': 'Here you can add his/her bio',
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
      'uid': uid,
      'likes': {'likes': 0},
      'comments': 0,
    });
    String imageUrl = await _cloudStorage.uploadFile(_image, 'posts', post.id);
    await feeds.doc(post.id).update({'imageUrl': imageUrl});
    return null;
  }

  Future<void> updatingPost(String recipe, File _image, String postId) async {
    String imageUrl = await _cloudStorage.uploadFile(_image, 'posts', postId);
    await _firestore
        .collection('feeds')
        .doc(postId)
        .update({'recipe': recipe, 'imageUrl': imageUrl});
  }

  Future<String> addingComments(
      String comment, String id, int commentsCount) async {
    String username = await userName();

    DocumentReference commented = await FirebaseFirestore.instance
        .collection('feeds')
        .doc(id)
        .collection('comments')
        .add({
      'comment': comment,
      'username': username,
      'likes': {'likes': 0},
      'timestamp': Timestamp.now(),
      'uid': uid,
      'replyCount': 0,
    });
    commentsCount = commentsCount + 1;

    await _firestore.runTransaction((transaction) {
      DocumentReference postRef = _firestore.collection('feeds').doc(id);
      transaction.update(postRef, {'comments': commentsCount});
      return null;
    });

    return commented.id;
  }

  Future<void> addingRepliesToComment(
      String postId, String commentId, String reply, int replyCount) async {
    await _firestore
        .collection('feeds')
        .doc(postId)
        .collection('comments')
        .doc(commentId)
        .collection('replies')
        .add({'uid': uid, 'reply': reply, 'timestamp': DateTime.now()});
    print(replyCount);
    replyCount = replyCount + 1;

    await _firestore.runTransaction((transaction) {
      DocumentReference postRef = _firestore
          .collection('feeds')
          .doc(postId)
          .collection('comments')
          .doc(commentId);
      transaction.update(postRef, {'replyCount': replyCount});
      return null;
    });
  }

  Future<void> deleteComment(
      String postId, String commentId, int commentCount) async {
    await _firestore.runTransaction((transaction) {
      DocumentReference commentRef = _firestore
          .collection('feeds')
          .doc(postId)
          .collection('comments')
          .doc(commentId);
      transaction.delete(commentRef);
      DocumentReference postRef = _firestore.collection('feeds').doc(postId);
      transaction.update(postRef, {'comments': commentCount - 1});
      return null;
    });
  }

  Future<void> incrementingPostLikes(
      String id, int like, bool liked, Map likesMap) async {
    await FirebaseFirestore.instance.runTransaction((transaction) {
      likesMap.update(uid, (value) => value = liked, ifAbsent: () => liked);
      likesMap.update('likes', (value) => like + 1);
      DocumentReference likesRef =
          FirebaseFirestore.instance.collection('feeds').doc(id);
      transaction.update(likesRef, {
        'likes': likesMap,
      });
      print(likesMap);
      // transaction.update(likesRef, {
      //   'likes': {uid: liked, 'likes': like + 1}
      // });
      return null;
    });
    // await FirebaseFirestore.instance
    //     .collection('feeds')
    //     .doc(id)
    //     .collection('likes')
    //     .doc(uid)
    //     .set({'liked': liked});
    // await FirebaseFirestore.instance
    //     .collection('feeds')
    //     .doc(id)
    //     .update({'likes': like + 1});
  }

  Future<void> incrementingCommentLikes(String postId, int like,
      String commentId, bool liked, Map likesMap) async {
    await _firestore.runTransaction((transaction) {
      likesMap.update('likes', (value) => like + 1);
      likesMap.update(uid, (value) => value = liked, ifAbsent: () => liked);
      DocumentReference commentLikeRef = _firestore
          .collection('feeds')
          .doc(postId)
          .collection('comments')
          .doc(commentId);
      transaction.update(commentLikeRef, {'likes': likesMap});
      return null;
    });

    // await FirebaseFirestore.instance
    //     .collection('feeds')
    //     .doc(postId)
    //     .collection('comments')
    //     .doc(commentId)
    //     .collection('likes')
    //     .doc(uid)
    //     .set({'liked': liked});
    // await FirebaseFirestore.instance
    //     .collection('feeds')
    //     .doc(postId)
    //     .collection('comments')
    //     .doc(commentId)
    //     .update({'likes': like + 1});
  }

  Future<void> deletePost(String postId) async {
    await _firestore.collection('feeds').doc(postId).delete();
    await _cloudStorage.deletingFile(postId);
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
