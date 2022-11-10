import 'package:flutter/material.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          const Text(
            'كل السيارات',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          const Text('يوكن للسيارات المعتمده',
            style:  TextStyle(
                fontWeight: FontWeight.w500
            ),
          ),
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.white,
            child: CircleAvatar(
                radius: 12,
                backgroundColor: Colors.grey[200],
                backgroundImage: const AssetImage(
                    'assets/images/Image 11.png')),
          ),
        ],
      ),
    );
  }
}
