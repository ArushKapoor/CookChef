import 'package:firebase_auth/firebase_auth.dart';
import 'package:cook_chef/Firestore/CloudFirestore.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth;

  AuthenticationService(this._firebaseAuth);
  Stream<User> get authCredentialChanges => _firebaseAuth.idTokenChanges();
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
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
      UserCredential user = await FirebaseAuth.instance
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
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
    return "Signed In";
  }
}
