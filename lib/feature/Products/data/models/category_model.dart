import 'package:flutter_svg/flutter_svg.dart';

class CategoryModel{
  final SvgPicture image;
  final String txt;
  final String price;

  CategoryModel({required this.image, required this.txt, required this.price});
}