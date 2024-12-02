import 'package:conecta_mais/src/core/models/contato_model.dart';
import 'package:conecta_mais/src/modules/home/widgets/button/button_sheet_button_widget.dart';
import 'package:conecta_mais/src/modules/home/widgets/inputs/search_input_widget.dart';
import 'package:conecta_mais/src/modules/home/widgets/list_view/contato_list_view_widget.dart';
import 'package:conecta_mais/src/modules/home/widgets/spaces/layout_main_space.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ContatoModel contatos = ContatoModel(
    nome: "Lázaro",
    numero: 84992017118,
    email: "lazaroalexandre.dev@gmail.com",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Conecta Mais"),
      ),
      body: SingleChildScrollView(
        child: LayoutMainSpace(
          child: Column(
            children: <Widget>[
              const SearchInputWidget(text: "Pesquisar..."),
              const SizedBox(
                height: 10,
              ),
              ContatoListViewWidget(
                itemCount: 10,
                contatoModel: contatos,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            isDismissible: false,
            context: context,
            builder: (context) => Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context)
                    .viewInsets
                    .bottom,
              ),
              child: const ButtonSheetButtonWidget(),
            ),
          );
        },
        tooltip: 'Adicionar Contato',
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
