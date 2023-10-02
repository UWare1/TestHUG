import 'package:flutter_application_1/src/feature/product/data/product_repository_http.dart';
import 'package:flutter_application_1/src/feature/product/domain/product_item_response.dart';

class ProductService {
  static Future<List<ProductItem>> getProductItemAll() async {
    return await HttpProductRepository().getItemAll();
  }
}
