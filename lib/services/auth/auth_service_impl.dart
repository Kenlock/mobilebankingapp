import 'package:mobilebanking/services/auth/auth_service.dart';
import 'package:mobilebanking/services/request_service.dart';
import 'package:mobilebanking/services/service_locator.dart';

class AuthServiceImpl implements AuthService {
  RequestService _requestApi;

  AuthServiceImpl() {
    _requestApi = serviceLocator.get<RequestService>();
  }

  @override
  Future forgotPassword() {
    // TODO: implement forgotPassword
    throw UnimplementedError();
  }

  @override
  Future login(Map<String, dynamic> data) async {
    dynamic data;
    try {
      data = await _requestApi.post(url: null, body: null);
    } catch (e) {
      
    }
  }

  @override
  Future logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
