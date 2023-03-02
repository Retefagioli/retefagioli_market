import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:retefagioli_market/screens/screens.dart';

class EntryScreen extends StatelessWidget {
  const EntryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FirebaseAuth.instance.currentUser != null ? HomeScreen() : const LoginScreen();
  }
}
