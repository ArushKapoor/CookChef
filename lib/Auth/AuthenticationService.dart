import 'package:firebase_auth/firebase_auth.dart';
import 'package:cook_chef/Firestore/CloudFirestore.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth;

  AuthenticationService(this._firebaseAuth);
  Stream<User> get authCredentialChanges => _firebaseAuth.idTokenChanges();
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  String get uniqueId {
    return _firebaseAuth.currentUser.uid;
  }

  String currentEmail() {
    return _firebaseAuth.currentUser.email;
  }

  Future<void> reloadUser() async {
    await FirebaseAuth.instance.currentUser.reload();
  }

  FirebaseAuth emailVerification() {
    return _firebaseAuth;
  }

  Future<bool> forgetPassword(String email) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return false;
    } on FirebaseAuthException catch (e) {
      print(e.code);
      if (e.code == 'user-not-found' || e.code == 'invalid-email') {
        return true;
      }
    }
    return false;
  }

  Future<bool> updateEmail(String email) async {
    try {
      await _firebaseAuth.currentUser.updateEmail(email);
      await _firebaseAuth.currentUser.sendEmailVerification();
      return false;
    } on FirebaseAuthException catch (e) {
      print(e.code);
      if (e.code == 'email-already-in-use' || e.code == 'invalid-email') {
        return true;
      }
    }
    return false;
  }

  Future<bool> updatePasswd(String passwd) async {
    try {
      await _firebaseAuth.currentUser.updatePassword(passwd);

      return false;
    } on FirebaseAuthException catch (e) {
      print(e.code);
      if (e.code == 'weak-password' || e.code == 'requires-recent-login') {
        return true;
      }
    }
    return false;
  }

  Future<String> signUp(
      {String email, String password, String username}) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      CloudFirestore cloudFirestore = CloudFirestore();

      await cloudFirestore.userSetUp(username);

      if (!_firebaseAuth.currentUser.emailVerified) {
        await _firebaseAuth.currentUser.sendEmailVerification();
      }

      return "Signed Up";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      } else if (e.code == 'invalid-email') {
        return 'Invalid Email';
      }
    } catch (e) {
      print(e);
    }
    return "Signed Up";
  }

  Future<String> signIn({String email, String password}) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      if (!_firebaseAuth.currentUser.emailVerified) {
        return 'We send an email to you.\n Please check your email';
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        return 'Wrong password provided for that user.';
      }
    }
    return null;
  }
}
