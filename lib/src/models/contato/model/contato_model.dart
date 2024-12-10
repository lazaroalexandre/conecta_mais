// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:uuid/uuid.dart';

class ContatoModel {
  final String id;
  final String nome;
  final int numero;
  final String? email;
  final String avatar;

  ContatoModel({
    required this.nome,
    required this.numero,
    this.email,
  })  : id = const Uuid().v4(),
        avatar = nome[0].toUpperCase();

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
      'numero': numero,
      'email': email,
      'avatar': avatar,
    };
  }

  factory ContatoModel.fromMap(Map<String, dynamic> map) {
    return ContatoModel(
      nome: map['nome'] as String,
      numero: map['numero'] as int,
      email: map['email'] != null ? map['email'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ContatoModel.fromJson(String source) => ContatoModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
