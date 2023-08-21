import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.labelText,
    required this.validator,
    required this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: TextStyle(color: Colors.grey.shade900),
      validator: validator,
      onSaved: onSaved,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(
            color: Colors.grey.shade900,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(
            color: Colors.black,
          ),
        ),
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.grey.shade900),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
