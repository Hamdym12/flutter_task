import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../feature/Products/presentation/controller/products_details_controller.dart';

 class ProductsDetailsWidget extends StatelessWidget{
  const ProductsDetailsWidget({Key? key, }) : super(key: key);




  @override
  Widget build(BuildContext context) {
    Get.put(ProductsDetailsController());
    return SizedBox(
      height: 40,
      child: ListView.separated(
          reverse: true,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
            width: 43,
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(6)),
            child: Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Get.find<ProductsDetailsController>().categoryList[index].image,
                  Text(
                    Get.find<ProductsDetailsController>().categoryList[index].txt,
                    style: const TextStyle(fontSize: 9),
                  ),
                  Text(
                    Get.find<ProductsDetailsController>().categoryList[index].price,
                    style: const TextStyle(
                        fontSize: 10, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          separatorBuilder: (context, index) => const SizedBox(
            width: 1,
          ),
          itemCount: 4),
    );
  }
}