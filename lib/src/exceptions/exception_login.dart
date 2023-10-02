import 'package:flutter_application_1/src/exceptions/exception_base.dart';

class LoginException extends BaseException {
  const LoginException([String? message]) : super("Login", message);

  LoginException notFound() {
    return const LoginException("not Found");
  }

  LoginException loginFailed() {
    return const LoginException("Login Failed");
  }
}
