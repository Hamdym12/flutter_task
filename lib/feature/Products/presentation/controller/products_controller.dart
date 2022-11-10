import 'package:get/get_state_manager/get_state_manager.dart';

import '../../domain/entities/products.dart';

class ProductsController extends GetxController{
  List<Products> productsList = [
    Products(text: 'جيلي',   images: 'assets/images/Image 1.png'),
    Products(text: 'تويوتا', images: 'assets/images/Image 11.png',),
    Products(text: 'جيلي',   images: 'assets/images/Image 1.png',),
    Products(text: 'جيلي',   images: 'assets/images/Image 11.png',),
    Products(text: 'ميرسيدس',images: 'assets/images/Image 1.png',),
    Products(text: 'تويوتا', images: 'assets/images/Image 11.png',),

  ];
}