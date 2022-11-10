import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/products_controller.dart';
import 'build_product_Item_widget.dart';

class StoriesWidget extends StatelessWidget {


   StoriesWidget({Key? key}) : super(key: key);

  ProductsController controller=Get.put(ProductsController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 8, 0),
      child: SizedBox(
        height: 100,
        child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {

              return buildProductItem(index: index,controller: controller,);
            },
            separatorBuilder: (context, index) => const SizedBox(
              width: 15,
            ),
            itemCount: 6),
      ),
    );
  }
}