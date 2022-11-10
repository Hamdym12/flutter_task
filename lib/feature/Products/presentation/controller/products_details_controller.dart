import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../data/models/category_model.dart';
import '../../data/models/products_details_model.dart';

class ProductsDetailsController extends GetxController{
  List<ProductDetailsModel> productsDetailsList = [
    ProductDetailsModel(productImages: 'assets/icons/CarPage-Slindr.svg', productTitle: 'المحرك سلندر', productNumber: 6),
    ProductDetailsModel(productImages: 'assets/icons/Home - Ad2.svg',     productTitle: 'سنه الصنع',    productNumber: 2019,),
    ProductDetailsModel(productImages: 'assets/icons/Home - Ad3.svg',     productTitle: 'المشي',        productNumber: 2000,)


  ];
  List<ProductsPropertiesModel> productsPropertiesList = [
    ProductsPropertiesModel(productPropertiesDetail: 'ابيض',  productPropertiesHeadline: 'اللون الخارجي', productPropertiesIcons: Icons.car_crash_outlined),
    ProductsPropertiesModel(productPropertiesDetail: 'بيج',  productPropertiesHeadline: 'اللون الداخلي', productPropertiesIcons: Icons.car_repair_sharp),
    ProductsPropertiesModel(productPropertiesDetail: 'مخمل',  productPropertiesHeadline: 'نوع المقعد', productPropertiesIcons: Icons.airline_seat_recline_normal_sharp,),
    ProductsPropertiesModel(productPropertiesDetail: '√',  productPropertiesHeadline: 'فتحه السقف', productPropertiesIcons: CupertinoIcons.car_detailed),
    ProductsPropertiesModel(productPropertiesDetail: '√',  productPropertiesHeadline: 'كاميرا خلفيه', productPropertiesIcons: Icons.camera_alt_outlined),
    ProductsPropertiesModel(productPropertiesDetail: 'امامي-خلفي',  productPropertiesHeadline: 'سينسر', productPropertiesIcons: CupertinoIcons.car),
    ProductsPropertiesModel(productPropertiesDetail: '6',  productPropertiesHeadline: 'سليندر', productPropertiesIcons: Icons.cable_rounded),
    ProductsPropertiesModel(productPropertiesDetail: 'اوتوماتيك',  productPropertiesHeadline: 'ناقل الحركه', productPropertiesIcons: Icons.schema_rounded),

  ];
  List<CategoryModel> categoryList = [
    CategoryModel(
        image: SvgPicture.asset(
          'assets/icons/Home-ad1.svg',
          height: 10,
        ),
        txt: "السعر",
        price: "12,700"),
    CategoryModel(
        image: SvgPicture.asset(
          'assets/icons/Home - Ad2.svg',
          height: 10,
        ),
        txt: "سنه الصنع ",
        price: "2019"),
    CategoryModel(
        image: SvgPicture.asset(
          'assets/icons/Home - Ad3.svg',
          height: 10,
        ),
        txt: "كم",
        price: "20000"),
    CategoryModel(
        image: SvgPicture.asset(
          'assets/icons/Home - Ad4.svg',
          height: 10,
        ),
        txt: "مكفوله ل",
        price: "2021"),
  ];
}