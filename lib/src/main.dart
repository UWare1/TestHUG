import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/src/constants/route.dart';
import 'package:flutter_application_1/src/routing/router_config.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    hideSystemBar();
    return GetCupertinoApp(
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      title: 'Product Application',
      theme: const CupertinoThemeData(
        primaryColor: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: NamedRouteConstants.loginRouteName,
      getPages: RouterConfigure().getPages,
    );
  }
}

Future hideSystemBar() async => SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
