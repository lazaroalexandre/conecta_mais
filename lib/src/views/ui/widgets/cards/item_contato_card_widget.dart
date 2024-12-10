// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:conecta_mais/src/models/contato_model.dart';
import 'package:conecta_mais/src/views/ui/mask/mask_token.dart';
import 'package:flutter/material.dart';


class ItemContatoCardWidget extends StatelessWidget {
  final ContatoModel contatoModel;
  final void Function() onPressedCard;
  const ItemContatoCardWidget({
    super.key,
    required this.contatoModel,
    required this.onPressedCard,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressedCard,
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            child: Text(contatoModel.avatar),
          ),
          title: Text(contatoModel.nome),
          subtitle: Text(
            "${MaskToken.formatPhoneNumber(contatoModel.numero.toString())} ${contatoModel.email != null && contatoModel.email!.isNotEmpty ? '| ${contatoModel.email}' : ''}",
            overflow: TextOverflow.ellipsis,
          ),
          contentPadding: const EdgeInsets.only(right: 10, left: 15),
        ),
      ),
    );
  }
}
