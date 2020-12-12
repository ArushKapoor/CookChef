import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

class AccountsList {
  List<Accounts> accountsList = [];
  Future<void> gettingAccounts() async {
    await _firebaseFirestore
        .collection('Users')
        .get()
        .then((QuerySnapshot snapshot) {
      snapshot.docs.forEach((element) {
        print(element.data());

        accountsList.add(Accounts(
            userId: element.data()['uid'],
            userImage: element.data()['imageLink'],
            username: element.data()['username']));
      });
    });
  }
}

class Accounts {
  Accounts({this.userId, this.userImage, this.username});
  String userImage, userId, username;
}
