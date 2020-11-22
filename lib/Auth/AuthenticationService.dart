import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth;

  AuthenticationService(this._firebaseAuth);
  Stream<User> get authCredentialChanges => _firebaseAuth.idTokenChanges();
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  FirebaseAuth emailVerification() {
    return _firebaseAuth;
  }

  Future<void> forgetPassword(String email) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      print(e.code);
    }
  }

  Future<String> signUp({String email, String password}) async {
    try {
      UserCredential user = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

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
