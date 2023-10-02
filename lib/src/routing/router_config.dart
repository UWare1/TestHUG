import 'package:flutter_application_1/src/constants/route.dart';
import 'package:flutter_application_1/src/feature/login/presentation/login.dart';
import 'package:flutter_application_1/src/feature/product/presentation/product.dart';
import 'package:get/get.dart';

class RouterConfigure {
  final getPages = [
    GetPage(
      name: NamedRouteConstants.loginRouteName,
      page: () => const CreateAccount3Widget(),
    ),
    GetPage(
      name: NamedRouteConstants.productRouteName,
      page: () => Product(),
    )
  ];
}
