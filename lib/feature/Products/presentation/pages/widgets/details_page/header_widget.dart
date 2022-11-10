import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Text.rich(
            textDirection: TextDirection.rtl,
            TextSpan(
                children: <InlineSpan>[
                  TextSpan(
                    text: '8,700',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  TextSpan(
                    text: '  ',
                  ),
                  TextSpan(
                    text: 'د.ك',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ]
            ),
          ),
          Spacer(),
          Text(
            'يوكن بحاله جيده',
            style: TextStyle(
                fontSize: 18
            ),
          )
        ],
      ),
    );
  }
}
