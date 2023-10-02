import 'package:flutter_application_1/src/feature/product/domain/product_item_response.dart';

abstract class ProductRepository {
  Future<List<ProductItem>> getItemAll();
}
