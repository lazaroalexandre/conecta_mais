// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormInputWidget extends StatelessWidget {
  final String text;
  final TextInputAction textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  const FormInputWidget({
    super.key,
    required this.text,
    required this.textInputAction,
    this.inputFormatters,
    this.validator,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      inputFormatters: inputFormatters,
      textInputAction: textInputAction,
      decoration:
          InputDecoration(hintText: text, contentPadding: EdgeInsets.zero),
    );
  }
}
