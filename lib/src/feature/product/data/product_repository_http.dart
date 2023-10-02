import 'package:flutter_application_1/src/api/api_base.dart';
import 'package:flutter_application_1/src/api/api_crud.dart';
import 'package:flutter_application_1/src/feature/product/data/product_repository.dart';
import 'package:flutter_application_1/src/feature/product/domain/product_item_response.dart';

class HttpProductRepository implements ProductRepository {
  @override
  getItemAll() => CrudApi.getAuthData(
        uri: BaseApi.buildUrl("/ItemService2/ItemAll"),
        header: BaseApi.buildHeaders(),
        builder: (data) => productItemListFromJson(data),
      );
}
