// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:conecta_mais/src/models/contato_model.dart';
import 'package:conecta_mais/src/views/ui/widgets/modal/detail_user_button_sheet_modal_widget.dart';
import 'package:flutter/material.dart';

import 'package:conecta_mais/src/views/ui/widgets/cards/item_contato_card_widget.dart';

class ContatoListViewWidget extends StatelessWidget {
  ContatoListViewWidget({
    super.key,
  });

  List<ContatoModel> contatoList = [];

  ContatoModel contato = ContatoModel(
    nome: "Lázaro",
    numero: 84992017118,
    email: "lazaroalexandre.dev@gmail.com",
  );

  @override
  Widget build(BuildContext context) {
    contatoList.add(contato);
    //contatoList.addAll(List.generate(10, (index) => contato));
    if (contatoList.isEmpty) {
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
      itemCount: contatoList.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ItemContatoCardWidget(
          contatoModel: contatoList[index],
          onPressedCard: () => showModalBottomSheet(
            isScrollControlled: true,
            isDismissible: false,
            context: context,
            builder: (context) => Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: DetailUserButtonSheetModalWidget(
                contatoModel: contatoList[index],
              ),
            ),
          ),
        );
      },
    );
  }
}
