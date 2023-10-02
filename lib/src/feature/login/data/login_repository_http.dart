import 'package:flutter_application_1/src/api/api_base.dart';
import 'package:flutter_application_1/src/feature/login/data/login_repository.dart';
import 'package:flutter_application_1/src/feature/login/domain/login_token_response.dart';

class HttpLoginRepository implements LoginRepository {
  @override
  loginAccount({required Map<String, String> queryLoginParams}) => BaseApi.getData(
        uri: BaseApi.buildUrl("/User/LogIn").replace(queryParameters: queryLoginParams),
        builder: (data) => LoginToken.fromJson(data),
      );
}
