import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Stream<QuerySnapshot<Map<String, dynamic>>> get testHistory => _firestore
      .collection('users')
      .doc(_auth.currentUser!.uid)
      .collection('tests')
      .snapshots();

  void addToTestHistory(
      String firstName, String lastName, String groupName) async {
    try {
      await _firestore
          .collection('users')
          .doc(_auth.currentUser!.uid)
          .collection('tests')
          .add({
        'fname': firstName,
        'lname': lastName,
        'gname': groupName,
        'score': 0,
        'createdAt': DateTime.now(),
      });
    } catch (e) {
      print(e);
    }
  }
}
