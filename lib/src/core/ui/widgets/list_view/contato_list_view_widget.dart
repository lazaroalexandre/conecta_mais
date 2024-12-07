// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:conecta_mais/src/core/models/contato_model.dart';
import 'package:conecta_mais/src/core/ui/widgets/cards/item_contato_card_widget.dart';
import 'package:conecta_mais/src/core/ui/widgets/modal/confirm_modal_widget.dart';
import 'package:conecta_mais/src/core/ui/widgets/modal/update_user_button_sheet_modal_widget.dart';

class ContatoListViewWidget extends StatelessWidget {
  final int itemCount;
  final ContatoModel contatoModel;
  const ContatoListViewWidget({
    super.key,
    required this.itemCount,
    required this.contatoModel,
  });

  @override
  Widget build(BuildContext context) {
    if (itemCount == 0) {
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
      itemCount: itemCount,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ItemContatoCardWidget(
          contatoModel: contatoModel,
          onPressedCard: () => showModalBottomSheet(
            isScrollControlled: true,
            isDismissible: false,
            context: context,
            builder: (context) => Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: UpdateUserButtonSheetModalWidget(
                contatoModel: contatoModel,
              ),
            ),
          ),
          removeOnPressed: () => showAdaptiveDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) => ConfirmModalWidget(
              title: "Apagar Contato?",
              content:
                  'Ao confirmar, você está ciente que o contato chamado "${contatoModel.nome}" do número "${contatoModel.numero}" será apagado permanentimente.',
              onPressed: () {},
            ),
          ),
        );
      },
    );
  }
}
