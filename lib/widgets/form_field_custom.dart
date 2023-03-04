import 'package:flutter/material.dart';

class FormFieldCustom extends StatefulWidget {
  final String customText;
  final bool obscureTextBool;
  bool obscureToogle = false;
  final String? Function(String?) validator;
  Icon obscureIconToogle = const Icon(Icons.lock);
  final TextEditingController? controller;
  FormFieldCustom(
      {super.key,
      this.customText = "customTextPlaceholder",
      this.obscureTextBool = false,
      required this.validator,
      this.controller
      }) {
    obscureToogle = obscureTextBool;
  }

  @override
  State<FormFieldCustom> createState() => _FormFieldCustomState();
}

class _FormFieldCustomState extends State<FormFieldCustom> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      autocorrect: false,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: widget.obscureToogle,
      validator: widget.validator,
      decoration: InputDecoration(
        errorMaxLines: 2,
        labelText: widget.customText,
        labelStyle: const TextStyle(
          fontSize: 17.0,
          fontWeight: FontWeight.w300,
        ),
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        suffixIcon: widget.obscureTextBool
            ? IconButton(
                onPressed: () => setState(
                  () {
                    widget.obscureToogle = !widget.obscureToogle;
                    widget.obscureIconToogle = widget.obscureToogle
                        ? const Icon(Icons.lock)
                        : const Icon(Icons.lock_open);
                  },
                ),
                icon: widget.obscureIconToogle,
              )
            : null,
      ),
    );
  }

}
