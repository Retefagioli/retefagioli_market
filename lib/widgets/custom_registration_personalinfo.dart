import 'package:flutter/material.dart';

class RegistrationPersonalInfoForm extends StatefulWidget {
  final void Function() changeState;
  RegistrationPersonalInfoForm({Key? key, required this.changeState}) : super(key: key);

  @override
  State<RegistrationPersonalInfoForm> createState() => _RegistrationPersonalInfoFormState();
}

class _RegistrationPersonalInfoFormState extends State<RegistrationPersonalInfoForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressCotroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
       child: null,
    );
  }
}