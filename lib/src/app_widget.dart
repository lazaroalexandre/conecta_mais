import 'package:conecta_mais/src/core/ui/theme_data_ui.dart';
import 'package:conecta_mais/src/modules/home/pages/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Conecta Mais',
      theme: ThemeDataUi.thema,
      home: HomePage(),
    );
  }
}
