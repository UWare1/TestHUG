import 'package:flutter_application_1/src/exceptions/exception_base.dart';

class ApiException extends BaseException {
  const ApiException([String? message]) : super("Api", message);

  ApiException notFound() {
    return const ApiException("not Found");
  }

  ApiException invalidKey() {
    return const ApiException("Invalid Key");
  }

  ApiException errorAPI() {
    return const ApiException("Error API (Check in API)");
  }

  ApiException unknown() {
    return const ApiException("Some error occurred");
  }

  ApiException noInternetConnection() {
    return const ApiException("No Internet Connection");
  }
}
