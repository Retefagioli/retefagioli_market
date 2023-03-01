import 'package:flutter/material.dart';
import 'widget_custom.dart';

class LoginFormCustom extends StatefulWidget {
  const LoginFormCustom({Key? key}) : super(key: key);

  @override
  _LoginFormCustomState createState() => _LoginFormCustomState();
}

class _LoginFormCustomState extends State<LoginFormCustom> {
  final _formKey = GlobalKey<FormState>();
  String? password;
  String? email;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      margin: const EdgeInsets.only(bottom: 60.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              margin: const EdgeInsets.all(10.0),
              child: const TitleCustom(customText: "Entra")),
          Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: FormFieldCustom(
                    customText: "Email",
                    obscureTextBool: false,
                    validator: checkEmail,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10.0, right: 10, left: 10),
                  child: FormFieldCustom(
                    customText: "Password",
                    obscureTextBool: true,
                    validator: checkPassword,
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            child: TextButton(
              onPressed: () => {},
              child: const Text("Recupera Password"),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(11.0),
            child: const ButtonCustom(
              customText: "Login",
              onPressed: buttonPressed,
            ),
          ),
        ],
      ),
    );
  }

  String? checkEmail(String? email) {
    final RegExp emailExp = RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
    if (email == null || email.isEmpty || !emailExp.hasMatch(email)) {
      return "Email non valida";
    } else {
      return null;
    }
  }

  String? checkPassword(String? password) {
    if (password == null || password.isEmpty) {
      return "Password non valida";
    } else {
      return null;
    }
  }
}

void buttonPressed() {
  
}
