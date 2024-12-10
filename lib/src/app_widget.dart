import 'package:conecta_mais/src/models/contato/repositories/contato_repository_impl.dart';
import 'package:conecta_mais/src/services/local/local_service_impl.dart';
import 'package:conecta_mais/src/controllers/contato_controller.dart';
import 'package:conecta_mais/src/views/pages/home_page.dart';
import 'package:conecta_mais/src/views/ui/theme/theme_data_ui.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: ContatoController(
            contatoRepository: ContatoRepositoryImpl(
              localService: LocalServiceImpl(),
            ),
          ),
          child: const HomePage(),
        ),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Conecta Mais',
        theme: ThemeDataUi.thema,
        home: const HomePage(),
      ),
    );
  }
}
