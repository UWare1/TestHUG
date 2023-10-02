import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/src/api/api_base.dart';
import 'package:flutter_application_1/src/constants/route.dart';
import 'package:flutter_application_1/src/exceptions/exception_login.dart';
import 'package:flutter_application_1/src/feature/login/application/login_service.dart';
import 'package:flutter_application_1/src/feature/login/domain/login_token_response.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool isLoading = false.obs;
  RxBool isTogglePassword = false.obs;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  togglePassword() => isTogglePassword(!isTogglePassword.value);
  loginAccount() async {
    try {
      isLoading(true);
      LoginToken response = await LoginService.loginAccount(
        usernameController.text,
        passwordController.text,
      );
      await BaseApi.storeToken(response.token);
      if (response.isBlank!) {
        throw const LoginException().loginFailed();
      } else {
        Get.toNamed(NamedRouteConstants.productRouteName);
      }
    } catch (e) {
      debugPrint("Catch Account Login Error: $e");
    } finally {
      isLoading.value = false;
    }
  }
}
