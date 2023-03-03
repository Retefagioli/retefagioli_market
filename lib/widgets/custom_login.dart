import 'package:flutter/material.dart';
import 'package:retefagioli_market/services/authentication/userAuthentication.dart';
import 'widget_custom.dart';
import 'package:retefagioli_market/config/app_router.dart';
import 'package:retefagioli_market/services/utils/validators.dart';

class LoginFormCustom extends StatefulWidget {
  const LoginFormCustom({Key? key}) : super(key: key);

  @override
  State<LoginFormCustom> createState() => _LoginFormCustomState();
}

class _LoginFormCustomState extends State<LoginFormCustom> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? password;
  String? email;
  Authenticator authenticator = Authenticator();
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
            child: const TitleCustom(customText: "Entra"),
          ),
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
                    controller: emailController,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10.0, right: 10, left: 10),
                  child: FormFieldCustom(
                    customText: "Password",
                    obscureTextBool: true,
                    validator: checkLoginPassword,
                    controller: passwordController,
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
            child: ButtonCustom(
              customText: "Login",
              onPressed: () async {
                email = emailController.text;
                password = passwordController.text;
                String? result =
                    await authenticator.authenticateUser(email!, password!);
                if (result == null) {
                  debugPrint("Autenticato");
                  router.go("/home");
                } else {
                  emailController.text = "";
                  passwordController.text = "";
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
