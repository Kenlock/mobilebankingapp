abstract class AuthService {
  Future<dynamic> login(Map<String, dynamic> data);
  Future<dynamic> logout();
  Future<dynamic> forgotPassword();
}
