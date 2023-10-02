import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/api/api_validator.dart';
import 'package:flutter_application_1/src/exceptions/exception_api.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class BaseApi {
  static final client = http.Client();
  static const storage = FlutterSecureStorage();

  static Uri buildUrl(String endpoint) {
    const String baseUrl = "https://api.drugnetcenter.com";
    final apiPath = baseUrl + endpoint;
    return Uri.parse(apiPath);
  }

  static Future<Map<String, String>> buildHeaders() async {
    final token = await getToken();
    final headers = {
      'Authorization': "Bearer $token",
      'Content-Type': 'application/json; charset=UTF-8',
    };
    return headers;
  }

  static Future<void> storeToken(String token) async => await storage.write(key: "token", value: token);

  static Future<String?> getToken() async => await storage.read(key: "token");

  static encodeJson(dynamic model) => json.encode(model);

  static Future<T> getData<T>({
    required Uri uri,
    T Function(dynamic data)? builder,
  }) async {
    try {
      final response = await client.get(
        uri,
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
      );
      debugPrint("response: ${response.body}");
      final data = ValidatorApi.validateDecode(response);
      return builder == null ? data : builder(jsonDecode(utf8.decode(response.bodyBytes)));
    } on SocketException catch (_) {
      throw const ApiException().noInternetConnection();
    }
  }
}
