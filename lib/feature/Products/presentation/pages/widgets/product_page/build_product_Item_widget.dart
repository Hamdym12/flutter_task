import 'package:flutter/material.dart';

import '../../../controller/products_controller.dart';

class buildProductItem extends StatelessWidget {
 final int index;
 final ProductsController controller;




 const buildProductItem({super.key, required this.index, required this.controller});@override
  Widget build(BuildContext context) {
      return Column(
        children: [
          Container(
            height: 65,
            width: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.redAccent)),
            child: CircleAvatar(
              radius: 24,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                  radius: 26,
                  backgroundImage: AssetImage(controller.productsList[index].images)),
            ),
          ),
          Text(
            controller.productsList[index].text,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          )
        ],
      );;
  }
}


