import 'package:shared_preferences/shared_preferences.dart';

import './local_storage_service.dart';

class LocalStorageServiceImpl implements LocalStorageService {
  @override
  Future delete(String key) async {
    SharedPreferences shared = await SharedPreferences.getInstance();
    return shared.remove(key);
  }

  @override
  Future get(String key) async {
    SharedPreferences shared = await SharedPreferences.getInstance();
    return shared.get(key);
  }

  @override
  Future put(String key, dynamic value) async {
    SharedPreferences shared = await SharedPreferences.getInstance();
    List<String> existingList = shared.getStringList(key) ?? [];
    if (value is String) {
      existingList.add(value);
      await shared.setStringList(key, existingList);
    }
  }
}
