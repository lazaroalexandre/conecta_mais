// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:conecta_mais/src/core/models/contato_model.dart';
import 'package:flutter/material.dart';

import 'package:conecta_mais/src/modules/home/repositories/contato_repository.dart';

class ContatoController extends ChangeNotifier {
  final ContatoRepository contatoRepository;
  ContatoController({
    required this.contatoRepository,
  });

  final conatoList = ValueNotifier<List<ContatoModel>>([]);

  listarTudo() async {
    conatoList.value = await contatoRepository.getContatos();
    notifyListeners();
  }
}
