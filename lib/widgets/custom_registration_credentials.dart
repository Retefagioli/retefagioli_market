import 'package:flutter/material.dart';
import 'widget_custom.dart';
import 'package:retefagioli_market/services/utils/validators.dart';
import 'package:retefagioli_market/models/user_model.dart';

class RegistrationCredentialsForm extends StatefulWidget {
  final void Function() changeState;
  final UserModel userModel;
  const RegistrationCredentialsForm(
      {Key? key, required this.changeState, required this.userModel})
      : super(key: key);

  @override
  State<RegistrationCredentialsForm> createState() =>
      _RegistrationCredentialsFormState();
}

class _RegistrationCredentialsFormState
    extends State<RegistrationCredentialsForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController secondPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.all(14.0),
            child: const TitleCustom(customText: "Registrati"),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: FormFieldCustom(
              customText: "Email",
              validator: checkEmail,
              controller: emailController,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: FormFieldCustom(
              customText: "Password",
              validator: checkRegistrationPassword,
              obscureTextBool: true,
              controller: passwordController,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: FormFieldCustom(
              customText: "Confirm Password",
              validator: checkSecondPassword,
              obscureTextBool: true,
              controller: secondPasswordController,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
            child: ButtonCustom(
              customText: "Continua",
              onPressed: () => {
                widget.userModel.email = emailController.text,
                widget.userModel.password = passwordController.text,
                widget.changeState()
              },
            ),
          ),
        ],
      ),
    );
  }

  String? checkSecondPassword(String? secondPassword) {
    if (passwordController.text != secondPassword)
      return "Le password non coincidono";
    return null;
  }
}
