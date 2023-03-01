import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final String customText;
  final void Function()? onPressed;
  const ButtonCustom({Key? key, required this.customText, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
        ),
        minimumSize: MaterialStateProperty.all(const Size(20, 56)),
      ),
      onPressed: onPressed,
      child: Text(
        customText, style: const TextStyle(fontSize: 17.0)
        ),
    );
  }
}
