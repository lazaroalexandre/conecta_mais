import 'package:flutter/material.dart';

class CancelButtonWidget extends StatelessWidget {
  const CancelButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
      
        style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(
            Color(0XFFF4F5F6),
          ),
          elevation: WidgetStatePropertyAll(0),
        ),
        onPressed: () => Navigator.pop(context),
        child: const Text("Voltar"),
      ),
    );
  }
}
