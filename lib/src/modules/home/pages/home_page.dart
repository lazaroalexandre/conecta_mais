import 'package:conecta_mais/src/core/models/contato_model.dart';
import 'package:conecta_mais/src/core/ui/widgets/body/main_body.dart';
import 'package:conecta_mais/src/core/ui/widgets/modal/create_user_button_sheet_modal_widget.dart';
import 'package:conecta_mais/src/core/ui/widgets/inputs/search_input_widget.dart';
import 'package:conecta_mais/src/core/ui/widgets/list_view/contato_list_view_widget.dart';
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
      body: MainBody(
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            isDismissible: false,
            context: context,
            builder: (context) => Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: const CreateUserButtonSheetModalWidget(),
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
