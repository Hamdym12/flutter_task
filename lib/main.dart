import 'package:flutter/material.dart';

import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'feature/Products/presentation/pages/product_page.dart';
import 'core/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme:appTheme,
      debugShowCheckedModeBanner: false,
      home: ProductPage(),
    );
  }
}

