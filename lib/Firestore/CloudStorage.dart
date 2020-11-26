import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_core/firebase_core.dart' as firebase_core;

class CloudStorage {
  Future<String> uploadFile(File file, String path, String name) async {
    //File file = File(filePath);

    try {
      firebase_storage.TaskSnapshot uploadTask = await firebase_storage
          .FirebaseStorage.instance
          .ref('$path/$name')
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
