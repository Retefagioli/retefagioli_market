import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:retefagioli_market/widgets/widget_custom.dart';
import '../config/app_router.dart';
import 'package:retefagioli_market/models/user_model.dart';

enum RegistrationState {
  credentials,
  personalInfo,
  confirmation,
  completed,
}

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  RegistrationState state = RegistrationState.credentials;
  UserModel userModel = UserModel();
  @override
  Widget build(BuildContext context) {
    double bottom = min(MediaQuery.of(context).viewInsets.bottom, 200);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          color: Colors.black,
          onPressed: () {
            router.go("/login");
          },
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
        shadowColor: Colors.white,
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: EdgeInsets.only(bottom: bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              getWidget()!,
              Container(
                margin: const EdgeInsets.only(bottom: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    FaIcon(FontAwesomeIcons.circleDot),
                    FaIcon(FontAwesomeIcons.circle),
                    FaIcon(FontAwesomeIcons.circle),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget? getWidget() {
    switch (state) {
      case RegistrationState.credentials:
        return RegistrationCredentialsForm(
          userModel: userModel,
          changeState: () {
            setState(
              () {
                state = RegistrationState.personalInfo;
                debugPrint(state.name);
              },
            );
          },
        );
      case RegistrationState.personalInfo:
        return const LoginFormCustom();
      default:
        return null;
    }
  }
}
