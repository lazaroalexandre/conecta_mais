// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:conecta_mais/src/views/ui/mask/mask_token.dart';
import 'package:conecta_mais/src/views/ui/widgets/forms/user_default_form_widget.dart';
import 'package:flutter/material.dart';

import 'package:conecta_mais/src/models/contato_model.dart';

class DetailUserFormWidget extends StatefulWidget {
  final ContatoModel contatoModel;
  const DetailUserFormWidget({
    super.key,
    required this.contatoModel,
  });

  @override
  State<DetailUserFormWidget> createState() => _DetailUserFormWidgetState();
}

class _DetailUserFormWidgetState extends State<DetailUserFormWidget> {
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
          emailEC: emailEC,
          isRead: true,
        ),
      ],
    );
  }
}
