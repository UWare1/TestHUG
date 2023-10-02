import 'dart:convert';
import 'dart:io';
import 'package:flutter_application_1/src/api/api_validator.dart';
import 'package:flutter_application_1/src/exceptions/exception_api.dart';
import 'package:http/http.dart' as http;

class CrudApi {
  static final client = http.Client();

  static Future<T> getAuthData<T>({
    required Uri uri,
    required Future<Map<String, String>> header,
    T Function(dynamic data)? builder,
  }) async {
    try {
      final response = await client.get(uri, headers: await header);
      final data = ValidatorApi.validateDecode(response);
      return builder == null ? data : builder(json.decode(data));
    } on SocketException catch (_) {
      throw const ApiException().noInternetConnection();
    }
  }
}
