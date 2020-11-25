import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:cook_chef/Auth/AuthenticationService.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class CloudStorage {
  Future<void> uploadFile(File file) async {
    //File file = File(filePath);
    //TODO: There is a need of path
    try {
      await firebase_storage.FirebaseStorage.instance.ref('').putFile(file);
    } on firebase_core.FirebaseException catch (e) {
      // e.g, e.code == 'canceled'
      if (e.code == 'canceled') {
        print('e.code');
      }
    }
  }
}
