import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  void initState() { 
    super.initState();
    initialize();
  }

  void initialize() async {
        await Future.delayed(const Duration(milliseconds: 40));
        FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       body: Text("CIAO"),
    );
  }
}