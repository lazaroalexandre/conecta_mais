// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:conecta_mais/src/core/constants/loca_storage/local_storage_constant.dart';
import 'package:conecta_mais/src/core/models/contato_model.dart';
import 'package:conecta_mais/src/core/services/local_storage/local_storage_service.dart';

import 'contato_repository.dart';

class ContatoRepositoryImpl implements ContatoRepository {
  final LocalStorageService localStorageService;
  ContatoRepositoryImpl({
    required this.localStorageService,
  });

  @override
  Future<void> deleteContato(String id) {
    throw UnimplementedError();
  }

  @override
  Future<List<ContatoModel>> getContatos() async {
    final List<String>? contatosJson =
        await localStorageService.get(LocalStorageConstant.contatoKey);

    if (contatosJson == null || contatosJson.isEmpty) {
      return [];
    }

    return contatosJson.map((json) => ContatoModel.fromJson(json)).toList();
  }

  @override
  Future<ContatoModel> postContato(ContatoModel contatoModel) async {
    final contatoJson = contatoModel.toJson();
    await localStorageService.put(LocalStorageConstant.contatoKey, contatoJson);
    return contatoModel;
  }

  @override
  Future<ContatoModel> putContato(
      ContatoModel contatoModel, String numero) async {
    final contatos = await getContatos();

    final index = contatos.indexWhere((c) => c.numero.toString() == numero);
    if (index != -1) {
      contatos[index] = contatoModel;
      final contatosJson = contatos.map((contato) => contato.toJson()).toList();
      await localStorageService.put(LocalStorageConstant.contatoKey, contatosJson);
    }
    return contatoModel;
  }
}
