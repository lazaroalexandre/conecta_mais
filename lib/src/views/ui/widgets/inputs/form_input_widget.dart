// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormInputWidget extends StatelessWidget {
  final String text;
  final TextInputAction textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final bool isRead;
  const FormInputWidget({
    super.key,
    required this.text,
    required this.textInputAction,
    this.inputFormatters,
    this.validator,
    required this.controller,
    this.isRead = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      inputFormatters: inputFormatters,
      textInputAction: textInputAction,
      readOnly: isRead,
      decoration:
          InputDecoration(hintText: text, contentPadding: EdgeInsets.zero),
    );
  }
}
