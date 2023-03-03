import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:retefagioli_market/widgets/widget_custom.dart';
import '../config/app_router.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const RegistrationFormCustom(),
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
    );
  }
}
