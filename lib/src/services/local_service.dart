abstract interface class LocalService {
  Future get(String key);
  Future put(String key, dynamic value);
}
