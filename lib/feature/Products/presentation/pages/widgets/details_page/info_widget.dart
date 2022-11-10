import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: const Directionality(
        textDirection: TextDirection.rtl,
        child: Text(
          '\nرنجات المنيوم 18انش اسود وكروم - ديكور خشب + كروم مقعد'
              '\nالسائق كهربائي - دواسات جانبيه - تحكم بالمقود - مع تعديل يدوي '
              'نظام المرتفعات - سايد بريك كهربائي'
          ,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
