import 'package:flutter_application_1/src/feature/login/data/login_repository_http.dart';
import 'package:flutter_application_1/src/feature/login/domain/login_token_response.dart';

class LoginService {
  static Future<LoginToken> loginAccount(String username, String password) async {
    final queryLoginParams = {
      'username': username,
      'password': password,
    };
    final response = await HttpLoginRepository().loginAccount(queryLoginParams: queryLoginParams);
    return response;
  }
}
