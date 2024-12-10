import 'package:conecta_mais/src/models/contato/model/contato_model.dart';
import 'package:conecta_mais/src/services/local/local_service.dart';

import 'contato_repository.dart';

class ContatoRepositoryImpl implements ContatoRepository {
  final LocalService localService;

  ContatoRepositoryImpl({
    required this.localService,
  });

  @override
  Future<List<ContatoModel>> getContato() async {
    final contatos = await localService.get("contato");
    if (contatos is List<ContatoModel>) {
      return contatos;
    }
    return [];
  }

  @override
  Future<ContatoModel> postContato(ContatoModel model) async {
    final contatoList = await getContato();
    contatoList.add(model);
    await localService.put("contato", contatoList);
    return model;
  }
}
