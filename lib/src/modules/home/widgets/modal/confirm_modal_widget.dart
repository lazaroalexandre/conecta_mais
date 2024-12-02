// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:conecta_mais/src/modules/home/widgets/button/cancel_button_widget.dart';
import 'package:conecta_mais/src/modules/home/widgets/button/confirm_button_widget.dart';
import 'package:flutter/material.dart';

class ConfirmModalWidget extends StatelessWidget {
  final String title;
  final String content;
  final void Function() onPressed;
  const ConfirmModalWidget({
    super.key,
    required this.title,
    required this.content,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontSize: 18),
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.close_rounded,
                    ),
                  ),
                ],
              ),
      content: Text(content),
      actions: [
        Row(
          children: [
            const Expanded (child:  CancelButtonWidget()),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: ConfirmButtonWidget(
                onPressed: onPressed,
                text: 'Apagar',
              ),
            ),
          ],
        )
      ],
    );
  }
}
