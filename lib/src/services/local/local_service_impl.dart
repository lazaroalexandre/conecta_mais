import 'package:conecta_mais/src/models/contato/model/contato_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'local_service.dart';
import 'dart:convert';

class LocalServiceImpl implements LocalService {
  @override
  Future get(String key) async {
    final shared = await SharedPreferences.getInstance();
    final jsonString = shared.getString(key);
    if (jsonString != null) {
      final List<dynamic> jsonList = json.decode(jsonString);
      return jsonList
          .map((e) => ContatoModel.fromMap(e as Map<String, dynamic>))
          .toList();
    }
    return [];
  }

  @override
  Future put(String key, dynamic value) async {
    final shared = await SharedPreferences.getInstance();
    final jsonString = json.encode(value.map((e) => e.toMap()).toList());
    return shared.setString(key, jsonString);
  }
}
