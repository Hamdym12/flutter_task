import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task0/feature/Products/presentation/pages/widgets/product_page/build_search_widget.dart';
import 'package:get/get.dart';
import '../../../../core/colors/app_colors.dart';
import '../controller/products_controller.dart';
import 'widgets/product_page/build_button_category_widget.dart';
import 'widgets/product_page/build_product_details_widget.dart';
import 'widgets/product_page/stoires_widget.dart';

class ProductPage extends StatelessWidget {
   ProductPage({Key? key}) : super(key: key);
  ProductsController controller=Get.put(ProductsController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }
  AppBar _buildAppBar() {
     return AppBar(
       backgroundColor: AppColors.primaryColor,
       leading: Padding(
         padding: const EdgeInsets.fromLTRB(18, 20, 20, 8),
         child: SvgPicture.asset(
           'assets/icons/notification.svg',
         ),
       ),
       actions: const [
         Padding(
           padding: EdgeInsets.only(right: 10, top: 16),
           child: Icon(
             Icons.menu,
             size: 25,
           ),
         )
       ],
     );
   }

  Widget _buildBody() {
    return SingleChildScrollView(
        child: Column(
          children: [
            StoriesWidget(),
            SizedBox(
              width: double.infinity,
              height: 160,
              child: Image.asset(
                'assets/images/Image 6.png',
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 10,),
            const BuildSearchWidget(),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                BuildButtonCategoryWidget(text:'امريكي'),
                BuildButtonCategoryWidget(text: 'اوروبي'),
                BuildButtonCategoryWidget(text: 'اسيوي'),
              ],
            ),
            const SizedBox(height: 20,),
            const BuildProductDetailsWidget(),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: double.infinity,
              child: Image.asset('assets/images/Image 5.png'),
            )
          ],
        ),
      );
  }

}


