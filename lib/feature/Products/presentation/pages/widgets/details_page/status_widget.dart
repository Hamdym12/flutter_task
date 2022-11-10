import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 30,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
          color: const Color(0xffa55959),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            'مكفوله حتي 70000 كم',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 16
            ),
          ),
          const SizedBox(width: 20,),
          SvgPicture.asset(
            'assets/icons/Home - Ad4.svg', height: 20,
            color: Colors.white,),
        ],
      ),
    );
  }
}
