import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/colors/app_colors.dart';

class BuildDesriptionDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

   return Row(
     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     children: [
       Container(
         height: 25,
         width: 100,
         decoration: BoxDecoration(
             border: Border.all(color: const Color(0xff50536c)),
             borderRadius: BorderRadius.circular(12)
         ),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             const Text(
               'احجز السياره',
               style: TextStyle(
                   fontWeight: FontWeight.w500,
                   fontSize: 12
               ),
             ),
             const SizedBox(width: 6,),
             SvgPicture.asset(
               'assets/icons/Car Page - Book.svg', height: 15,),
           ],
         ),
       ),
       Container(
         height: 25,
         width: 100,
         decoration: BoxDecoration(
             color: const Color(0xff50536c),
             borderRadius: BorderRadius.circular(12)
         ),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: const [
             Text(
               'موقع السياره',
               style: TextStyle(
                   color: Colors.white,
                   fontWeight: FontWeight.w500,
                   fontSize: 12
               ),
             ),
             SizedBox(width: 6,),
             Icon(Icons.location_on_outlined, color: Colors.white,
               size: 18,),
           ],
         ),
       ),
       containerItem(
           'assets/icons/Car Page - Chat by WHatsapp.svg',
           AppColors.iconBackground2),
       containerItem('assets/icons/Car Page - Call.svg',
           AppColors.iconBackground2),

     ],
   );
  }

 static Widget containerItem(String image, Color backgroundColor) {
    return Container(
        height: 30,
        width: 28,
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
        ),
        child: Center(
            child: SvgPicture.asset(image, height: 15,)
        )
    );
  }
}