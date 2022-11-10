import 'package:flutter/cupertino.dart';

class ProductDetailsModel{
  String productImages;
  String productTitle;
  int productNumber;

  ProductDetailsModel(
      {required this.productImages,required this.productTitle,required this.productNumber});
}
class ProductsPropertiesModel{
  IconData productPropertiesIcons;
  String productPropertiesHeadline;
  String productPropertiesDetail;

  ProductsPropertiesModel(
      {required this.productPropertiesDetail,required this.productPropertiesHeadline,required this.productPropertiesIcons});

}