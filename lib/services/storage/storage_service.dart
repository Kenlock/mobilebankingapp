abstract class StorageService {
  Future<String> getAccessToken();
  Future<void> saveAccessToken(String token);
}
