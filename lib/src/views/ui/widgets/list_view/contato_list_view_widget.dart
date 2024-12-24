// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:conecta_mais/src/controllers/contato_controller.dart';
import 'package:conecta_mais/src/views/ui/widgets/cards/item_contato_card_widget.dart';
import 'package:conecta_mais/src/views/ui/widgets/modal/detail_user_button_sheet_modal_widget.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class ContatoListViewWidget extends StatelessWidget {
  const ContatoListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ContatoController>(
      builder: (context, value, child) {
        value.list();
        if (value.contatoListFilter.isEmpty) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                "assets/images/Empty-amico.png",
                width: 300,
              ),
              const Text(
                "Contato não encontrado!",
                style: TextStyle(fontSize: 18),
              ),
            ],
          );
        }
        return ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: value.contatoListFilter.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ItemContatoCardWidget(
              contatoModel: value.contatoListFilter[index],
              onPressedCard: () => showModalBottomSheet(
                isScrollControlled: true,
                isDismissible: false,
                context: context,
                builder: (context) => Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: DetailUserButtonSheetModalWidget(
                    contatoModel: value.contatoListFilter[index],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
