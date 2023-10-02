import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/src/feature/product/application/prodcut_service.dart';
import 'package:flutter_application_1/src/feature/product/domain/product_item_response.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  List<ProductItem> productItemList = [];
  RxList<ProductItem> productItemListDataUse = <ProductItem>[].obs;
  RxBool isLoading = false.obs;
  @override
  void onInit() {
    super.onInit();
    getItemAll();
  }

  getItemAll() async {
    try {
      isLoading(true);
      productItemList = await ProductService.getProductItemAll();
      productItemListDataUse.value = productItemList;
    } catch (e) {
      debugPrint("Error Product Item: $e");
    } finally {
      isLoading(false);
    }
  }
}
