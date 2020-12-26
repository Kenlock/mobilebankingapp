import 'package:dartz/dartz.dart';
import 'package:mobilebanking/business_logic/models/general_response.dart';

abstract class AuthService {
  Future<GeneralResponse> login(Map<String, dynamic> data);
  Future<GeneralResponse> logout();
  Future<GeneralResponse> forgotPassword();
}
