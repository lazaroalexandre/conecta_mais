// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:conecta_mais/src/models/contato/model/contato_model.dart';
import 'package:flutter/material.dart';

import 'package:conecta_mais/src/models/contato/repositories/contato_repository.dart';

class ContatoController extends ChangeNotifier {
  final ContatoRepository contatoRepository;

  ContatoController({
    required this.contatoRepository,
  });

  List<ContatoModel> _contatoList = [];
  List<ContatoModel> _contatoListFilter = [];

  List<ContatoModel> get contatoListFilter => _contatoListFilter;

  list() async {
    if (_contatoList.isEmpty) {
      _contatoList = await contatoRepository.getContato();
      _contatoListFilter = _contatoList;
    }
    notifyListeners();
  }

  save(ContatoModel model) async {
    await contatoRepository.postContato(model);
    _contatoList = await contatoRepository.getContato();
    _contatoListFilter = _contatoList;
    notifyListeners();
  }

  listFilter(String value) {
    if (value.isNotEmpty) {
      _contatoListFilter = _contatoList
          .where((element) =>
              element.nome.toLowerCase().contains(value.toLowerCase()))
          .toList();
    } else {
      _contatoListFilter = _contatoList;
    }
    notifyListeners();
  }
}
