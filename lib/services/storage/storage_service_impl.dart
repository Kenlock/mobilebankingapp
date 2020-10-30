import 'package:mobilebanking/services/storage/storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageSericeimpl implements StorageService {
  static const SHARED_PREFERENCE_ACCESS_TOKEN = 'token';

  @override
  Future<String> getAccessToken() async {
    String data =
        await _getStringFromSharedPreference(SHARED_PREFERENCE_ACCESS_TOKEN);
    return Future<String>.value(data);
  }

  @override
  Future<void> saveAccessToken(String token) {
    return _saveToPreferences(SHARED_PREFERENCE_ACCESS_TOKEN, token);
  }

  Future<String> _getStringFromSharedPreference(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return Future<String>.value(prefs.getString(key) ?? '');
  }

  Future<void> _saveToPreferences(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }
}
