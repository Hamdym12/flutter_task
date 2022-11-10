import 'package:flutter/material.dart';

class BuildButtonCategoryWidget extends StatelessWidget {
  final String text;

  const BuildButtonCategoryWidget({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 27,
      width: 90,
      decoration: BoxDecoration(
          color: const Color(0xff41445b),
          borderRadius: BorderRadius.circular(18)),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 15, color: Colors.white),
        ),
      ),
    );
  }
}