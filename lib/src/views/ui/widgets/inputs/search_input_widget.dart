// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SearchInputWidget extends StatelessWidget {
  final String text;
  final void Function(String) onChanged;

  const SearchInputWidget({
    super.key,
    required this.text,
    required this.onChanged,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: text,
        suffixIcon: const Padding(
          padding: EdgeInsets.only(right: 20),
          child: Icon(
            Icons.search,
            size: 20,
          ),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              width: 0.1,
            )),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              width: 0.1,
            )),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 0.1,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onChanged: onChanged,
    );
  }
}
