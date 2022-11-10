import 'package:flutter/material.dart';

import '../../../../../../core/widgets/product_details_widget.dart';

class BuildGridItem extends StatelessWidget {
  const BuildGridItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 150,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: 172,
                    height: 20,
                    color: Colors.grey[300],
                    child: const Center(
                      child: Text('جي ام سي | يوكن | الفئه الرابعه'),
                    ),
                  ),
                  SizedBox(
                    height: 83,
                    width: 172,
                    child: Image.asset(
                      'assets/images/Image 1.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 100,
                child: SizedBox(
                  height: 100,
                  width: 172,
                  child: ListView.builder(
                    itemBuilder: (context, index) =>
                    const ProductsDetailsWidget(),
                    itemCount: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 2,),
        SizedBox(
          height: 150,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: 172,
                    height: 20,
                    color: Colors.grey[300],
                    child: const Center(
                      child: Text('جي ام سي | يوكن | الفئه الرابعه'),
                    ),
                  ),
                  SizedBox(
                    height: 83,
                    width: 172,
                    child: Image.asset(
                      'assets/images/Image 11.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 100,
                child: SizedBox(
                  height: 100,
                  width: 172,
                  child: ListView.builder(
                    itemBuilder: (context, index) =>
                    const ProductsDetailsWidget(),
                    itemCount: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
