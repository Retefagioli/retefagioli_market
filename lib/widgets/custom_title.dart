import 'package:flutter/material.dart';

class TitleCustom extends StatelessWidget {
  final String customText;
  const TitleCustom({Key? key, required this.customText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      customText,
      style: const TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}