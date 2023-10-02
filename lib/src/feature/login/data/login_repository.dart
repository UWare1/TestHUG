import 'package:flutter_application_1/src/feature/login/domain/login_token_response.dart';

abstract class LoginRepository {
  Future<LoginToken> loginAccount({required Map<String, String> queryLoginParams});
}
