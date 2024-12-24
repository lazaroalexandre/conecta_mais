import 'package:conecta_mais/src/controllers/contato_controller.dart';
import 'package:conecta_mais/src/views/ui/widgets/body/main_body.dart';
import 'package:conecta_mais/src/views/ui/widgets/inputs/search_input_widget.dart';
import 'package:conecta_mais/src/views/ui/widgets/list_view/contato_list_view_widget.dart';
import 'package:conecta_mais/src/views/ui/widgets/modal/create_user_button_sheet_modal_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<ContatoController>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Conecta Mais"),
      ),
      body: MainBody(
        child: Column(
          children: [
            SearchInputWidget(
              text: "Pesquisar...",
              onChanged: controller.listFilter,
            ),
            const SizedBox(
              height: 10,
            ),
            const ContatoListViewWidget(),
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
