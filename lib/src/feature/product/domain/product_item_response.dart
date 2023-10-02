import 'dart:convert';

List<ProductItem> productItemListFromJson(dynamic str) => List<ProductItem>.from(str.map((x) => ProductItem.fromJson(x)));

ProductItem productItemFromJson(String str) => ProductItem.fromJson(json.decode(str));

String productItemToJson(ProductItem data) => json.encode(data.toJson());

class ProductItem {
  String goodCode;
  String barcode;
  String goodName;
  String goodDesc;
  String cateCode;
  String typeCode;
  String drugCode;
  String drugCateCode;
  String bodySysCode;
  String goodShapeCode;
  String drugUseCode;
  String indiCode;
  String useCode;
  String recoCode;
  String groupCode;
  String goodSpecialCode;
  String goodRema;
  String drugUseFor;
  String sideEffect;
  int price;

  ProductItem({
    required this.goodCode,
    required this.barcode,
    required this.goodName,
    required this.goodDesc,
    required this.cateCode,
    required this.typeCode,
    required this.drugCode,
    required this.drugCateCode,
    required this.bodySysCode,
    required this.goodShapeCode,
    required this.drugUseCode,
    required this.indiCode,
    required this.useCode,
    required this.recoCode,
    required this.groupCode,
    required this.goodSpecialCode,
    required this.goodRema,
    required this.drugUseFor,
    required this.sideEffect,
    required this.price,
  });

  factory ProductItem.fromJson(Map<String, dynamic> json) => ProductItem(
        goodCode: json["goodCode"],
        barcode: json["barcode"],
        goodName: json["goodName"],
        goodDesc: json["goodDesc"],
        cateCode: json["cateCode"],
        typeCode: json["typeCode"],
        drugCode: json["drugCode"],
        drugCateCode: json["drugCateCode"],
        bodySysCode: json["bodySysCode"],
        goodShapeCode: json["goodShapeCode"],
        drugUseCode: json["drugUseCode"],
        indiCode: json["indiCode"],
        useCode: json["useCode"],
        recoCode: json["recoCode"],
        groupCode: json["groupCode"],
        goodSpecialCode: json["goodSpecialCode"],
        goodRema: json["goodRema"],
        drugUseFor: json["drugUseFor"],
        sideEffect: json["sideEffect"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "goodCode": goodCode,
        "barcode": barcode,
        "goodName": goodName,
        "goodDesc": goodDesc,
        "cateCode": cateCode,
        "typeCode": typeCode,
        "drugCode": drugCode,
        "drugCateCode": drugCateCode,
        "bodySysCode": bodySysCode,
        "goodShapeCode": goodShapeCode,
        "drugUseCode": drugUseCode,
        "indiCode": indiCode,
        "useCode": useCode,
        "recoCode": recoCode,
        "groupCode": groupCode,
        "goodSpecialCode": goodSpecialCode,
        "goodRema": goodRema,
        "drugUseFor": drugUseFor,
        "sideEffect": sideEffect,
        "price": price,
      };
}
