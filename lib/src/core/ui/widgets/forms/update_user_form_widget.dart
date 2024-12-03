// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:conecta_mais/src/core/models/contato_model.dart';
import 'package:conecta_mais/src/core/ui/tokens/mask/mask_token.dart';
import 'package:conecta_mais/src/core/ui/widgets/button/cancel_button_widget.dart';
import 'package:conecta_mais/src/core/ui/widgets/button/confirm_button_widget.dart';
import 'package:conecta_mais/src/core/ui/widgets/forms/user_default_form_widget.dart';

class UpdateUserFormWidget extends StatefulWidget {
  final ContatoModel contatoModel;
  const UpdateUserFormWidget({
    super.key,
    required this.contatoModel,
  });

  @override
  State<UpdateUserFormWidget> createState() => _UpdateUserFormWidgetState();
}

class _UpdateUserFormWidgetState extends State<UpdateUserFormWidget> {
  final formKey = GlobalKey<FormState>();
  final nomeEC = TextEditingController();
  final numeroEC = TextEditingController();
  final emailEC = TextEditingController();

  @override
  void initState() {
    super.initState();
    nomeEC.text = widget.contatoModel.nome;
    numeroEC.text = widget.contatoModel.numero.toString().replaceAllMapped(
          MaskToken.phoneOutput,
          MaskToken.photoOutputMacth,
        );
    emailEC.text = widget.contatoModel.email ?? "";
  }

  @override
  void dispose() {
    nomeEC.dispose();
    numeroEC.dispose();
    emailEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        UserDefaultFormWidget(
            formKey: formKey,
            nomeEC: nomeEC,
            numeroEC: numeroEC,
            emailEC: emailEC),
        Row(
          children: [
            const Expanded(
              child: CancelButtonWidget(),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: ConfirmButtonWidget(
                onPressed: () {
                  final valid = formKey.currentState?.validate() ?? false;
                  if (valid) {
                    final contatoModel = ContatoModel(
                        nome: nomeEC.text,
                        numero: int.parse(
                          numeroEC.text.replaceAll(MaskToken.removeMask, ''),
                        ),
                        email: emailEC.text);
                    Navigator.pop(context);
                  }
                },
                text: 'Salvar',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
