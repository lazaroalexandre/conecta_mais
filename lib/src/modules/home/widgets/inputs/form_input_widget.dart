// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class FormInputWidget extends StatelessWidget {
  final String text;
  final TextInputAction textInputAction;
  const FormInputWidget({
    super.key,
    required this.text,
    required this.textInputAction,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: text,
        contentPadding: EdgeInsets.zero
      ),
      textInputAction: textInputAction,
    );
  }
}
