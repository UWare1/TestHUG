import 'package:flutter_application_1/src/exceptions/exception_api.dart';

class ValidatorApi {
  static dynamic validateDecode(response) {
    switch (response.statusCode) {
      case 200:
        return response.body;
      case 401:
        throw const ApiException().invalidKey();
      case 404:
        throw const ApiException().notFound();
      case 417:
        throw const ApiException().errorAPI();
      default:
        throw "${response.statusCode}";
    }
  }
}
