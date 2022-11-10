import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BuildSearchWidget extends StatelessWidget {
  const BuildSearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      height: 42,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey)),
      child: Row(
        children: [
          Expanded(flex: 1, child: Container()),
          const Expanded(
            flex: 8,
            child: Text(
              'ابحث عن سيارتك',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(right: 12),
              child: SvgPicture.asset(
                'assets/icons/Home-Search.svg',
                height: 22,
                width: 20,
              ),
            ),
          )
        ],
      ),

    );
  }
}