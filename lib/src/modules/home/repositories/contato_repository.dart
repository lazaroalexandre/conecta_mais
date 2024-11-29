import 'package:conecta_mais/src/core/models/contato_model.dart';

abstract interface class ContatoRepository {
  Future<List<ContatoModel>> getContatos();
  Future<ContatoModel> postContato(ContatoModel contatoModel);
  Future<void> deleteContato(String numero);
  Future<ContatoModel> putContato(ContatoModel contatoModel, String numero);
}