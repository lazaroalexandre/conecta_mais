// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MainBody extends StatelessWidget {
  final Widget child;
  const MainBody({
    super.key,
    required this.child,
  });


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 20,
        ),
        child: child,
      ),
    );
  }
}
