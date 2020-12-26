import 'package:mobilebanking/business_logic/models/general_response.dart';
import 'package:mobilebanking/services/api_service.dart';
import 'package:mobilebanking/services/auth/auth_service.dart';
import 'package:mobilebanking/services/service_locator.dart';
import 'package:mobilebanking/services/utils/constants.dart';

class AuthServiceImpl implements AuthService {
  ApiService _apiService = serviceLocator.get<ApiService>();

  AuthServiceImpl() {}

  @override
  Future<GeneralResponse> forgotPassword() {
    // TODO: implement forgotPassword
    throw UnimplementedError();
  }

  @override
  Future<GeneralResponse> login(Map<String, dynamic> body) async {
    print('lets login! ${BASE_URL}/login');
    print(_apiService);
    Map<String, dynamic> apiResponse =
        await _apiService.post(url: '$BASE_URL/login', body: body);
    print('API RESPONSE');
    GeneralResponse response;
    try {
      response = GeneralResponse.fromJson(apiResponse);
      print(apiResponse);
      return response;
    } catch (e) {
      throw e;
    }
    //return Future.value(data);
  }

  @override
  Future<GeneralResponse> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
