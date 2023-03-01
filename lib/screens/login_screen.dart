import 'package:flutter/material.dart';
import 'package:retefagioli_market/widgets/widget_custom.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 100.0),
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Image.asset("assets/images/retefagiolirevisitedultra.png"),
          ),
          const LoginFormCustom(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Non sei ancora membro?"),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Registrati qui"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
