import 'package:conecta_mais/src/views/ui/widgets/forms/create_user_form_widget.dart';
import 'package:flutter/material.dart';

class CreateUserButtonSheetModalWidget extends StatelessWidget {
  const CreateUserButtonSheetModalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      height: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Icons.arrow_back_rounded,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const Text(
                "Novo Contato",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          const Expanded(
            child: CreateUserFormWidget(),
          ),
        ],
      ),
    );
  }
}
