// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:conecta_mais/src/core/models/contato_model.dart';

class ItemContatoCardWidget extends StatelessWidget {
  final ContatoModel contatoModel;
  final void Function() onPressedCard;
  final void Function() removeOnPressed;
  const ItemContatoCardWidget({
    super.key,
    required this.contatoModel,
    required this.onPressedCard,
    required this.removeOnPressed,
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
            "${contatoModel.numero} ${contatoModel.email != null ? '| ${contatoModel.email}' : ''}",
            overflow: TextOverflow.ellipsis,
          ),
          trailing: IconButton(
            onPressed: removeOnPressed,
            icon: const Icon(
              Icons.delete_outline_outlined,
            ),
          ),
          contentPadding: const EdgeInsets.only(right: 10, left: 15),
        ),
      ),
    );
  }
}
