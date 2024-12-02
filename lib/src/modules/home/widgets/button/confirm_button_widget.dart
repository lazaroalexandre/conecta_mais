// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ConfirmButtonWidget extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  const ConfirmButtonWidget({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.blue),
          foregroundColor: WidgetStatePropertyAll(Colors.white),
          elevation: WidgetStatePropertyAll(0),
          
        ),
      
        onPressed: () => Navigator.pop(context),
        child: Text(text),
      ),
    );
  }
}
