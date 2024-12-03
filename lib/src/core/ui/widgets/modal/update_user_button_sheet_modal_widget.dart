// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:conecta_mais/src/core/models/contato_model.dart';
import 'package:conecta_mais/src/core/ui/widgets/forms/update_user_form_widget.dart';

class UpdateUserButtonSheetModalWidget extends StatelessWidget {
  final ContatoModel contatoModel;
  const UpdateUserButtonSheetModalWidget({
    super.key,
    required this.contatoModel,
  });

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
                "Editar Contato",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          Expanded(
            child: UpdateUserFormWidget(contatoModel: contatoModel,),
          ),
        ],
      ),
    );
  }
}