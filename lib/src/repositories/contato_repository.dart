import 'package:conecta_mais/src/models/contato_model.dart';

abstract interface class ContatoRepository {
  Future<ContatoModel> postContato(ContatoModel model);
  Future<List<ContatoModel>> getContato();
}
