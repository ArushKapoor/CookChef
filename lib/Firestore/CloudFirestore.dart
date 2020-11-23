import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CloudFirestore {
  CollectionReference user;
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser.uid.toString();
  Future<void> userSetUp(String userName) {
    user = FirebaseFirestore.instance.collection('Users');

    user.doc(uid).update({'username': userName, 'uid': uid});
    return null;
  }

  Future<void> addingPost() {
    CollectionReference post = user.doc('').collection('');
  }
}
