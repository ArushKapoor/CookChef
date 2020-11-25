import 'dart:io';
import 'package:cook_chef/Auth/AuthenticationService.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CloudStorage {
  FirebaseAuth _auth = FirebaseAuth.instance;
  Future<String> uploadFile(File file, String path) async {
    //File file = File(filePath);
    //TODO: There is a need of path
    String uid = _auth.currentUser.uid;

    try {
      firebase_storage.TaskSnapshot uploadTask = await firebase_storage
          .FirebaseStorage.instance
          .ref('$path/$uid')
          .putFile(file);
      uploadTask.ref;
      String downloadURL = await firebase_storage.FirebaseStorage.instance
          .ref(uploadTask.ref.fullPath)
          .getDownloadURL();
      return downloadURL;
    } on firebase_core.FirebaseException catch (e) {
      // e.g, e.code == 'canceled'
      if (e.code == 'canceled') {
        print('e.code');
      }
    }
    return 'https://firebasestorage.googleapis.com/v0/b/cook-chef.appspot.com/o/Users%2Fprofile-user.png?alt=media&token=f156591e-9aa4-4c42-8b28-0ce36eef7d5c';
  }
}
