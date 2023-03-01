import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class Authenticator {
  FirebaseAuth? _firebaseAuth;
  DatabaseReference? dbRef;
  Authenticator() {
    _firebaseAuth = FirebaseAuth.instance;
    dbRef = FirebaseDatabase.instance.ref().child("Users");
  }

  Future<String?> authenticateUser(String email, String password) async {
    try {
      await _firebaseAuth?.signInWithEmailAndPassword(email: email, password: password);
      return null;
    } on FirebaseAuthException {
      return "Wrong Password or email";
    }
  }
}
