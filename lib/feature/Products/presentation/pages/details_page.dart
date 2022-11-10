import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task0/feature/Products/presentation/pages/widgets/details_page/build_description_item.dart';
import 'package:flutter_task0/feature/Products/presentation/pages/widgets/details_page/build_grid_items.dart';
import 'package:flutter_task0/feature/Products/presentation/pages/widgets/details_page/details_widget.dart';
import 'package:flutter_task0/feature/Products/presentation/pages/widgets/details_page/header_widget.dart';
import 'package:flutter_task0/feature/Products/presentation/pages/widgets/details_page/info_widget.dart';
import 'package:flutter_task0/feature/Products/presentation/pages/widgets/details_page/status_widget.dart';
import 'package:get/get.dart';
import '../../../../core/colors/app_colors.dart';
import '../../../../core/widgets/product_details_widget.dart';
import '../controller/products_details_controller.dart';
import 'product_page.dart';

class DetailsPage extends StatelessWidget {
  ProductsDetailsController controller=Get.put(ProductsDetailsController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                toolbarHeight: 90,
                leading: const SizedBox(),
                leadingWidth: 0,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BuildDesriptionDetails.containerItem('assets/icons/Car Page - Fav.svg', AppColors.secondaryColor),
                      const SizedBox(width: 20,),
                      BuildDesriptionDetails.containerItem('assets/icons/Car Page - Share.svg', AppColors.secondaryColor),
                      const Spacer(),
                      InkWell(
                          onTap: () {Get.to(ProductPage());},
                          child:  BuildDesriptionDetails.containerItem('assets/icons/Back.svg', AppColors.secondaryColor)),
                    ],
                ),
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(20),
                  child: Container(
                      width: double.maxFinite,
                      alignment: Alignment.center,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            height: 60,
                            color: Colors.white,
                          ),
                          SizedBox(
                           height: 75,
                            child: ListView.separated(
                              reverse: true,
                              separatorBuilder: (context,
                                  index) => const SizedBox(width: 10,),
                              scrollDirection: Axis.horizontal,
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return buildProductDetails(index: index);
                              }),
                        )],

                      )),

                ),
                pinned: true,
                expandedHeight: 300,
                backgroundColor:AppColors.secondaryColor,
                flexibleSpace: FlexibleSpaceBar(
                  background:  SizedBox(
                    height: 225,
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/car.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),

                ),
              ),
              SliverToBoxAdapter(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 10,),
                      const HeaderWidget(),
                      const SizedBox(height: 10,),
                      const StatusWidget(),
                      const SizedBox(height: 15,),
                      ListView.separated(
                          scrollDirection: Axis.vertical,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return buildItemDetails(index: index);
                          },
                          separatorBuilder: (context, index) =>
                          const SizedBox(height: 5,),
                          itemCount: 8
                      ),
                      const SizedBox(height: 15,),
                      const InfoWidget(),
                      const SizedBox(height: 15,),
                      const DetailsWidget(),
                      const SizedBox(height: 20,),
                      const BuildGridItem(),
                      const SizedBox(height: 20,),
                      BuildDesriptionDetails(),
                      const SizedBox(height: 25,)
                    ],
                  ),
                ),
              )
            ],
          )
        )
    );
  }


  Widget buildProductDetails({required int index}) {
    return Container(
      width: 85,
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(6)),
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(controller.productsDetailsList[index].productImages, height: 20,),
            const SizedBox(height: 5,),
            Text(
              controller.productsDetailsList[index].productTitle,
              style: const TextStyle(fontSize: 10),
            ),
            const SizedBox(height: 5,),
            Text(
              controller.productsDetailsList[index].productNumber.toString(),
              style: const TextStyle(
                  fontSize: 12, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildItemDetails({required int index}) {
    return Container(
      height: 30,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Center(
              child: Text(
                controller.productsPropertiesList[index].productPropertiesDetail,
                style: const TextStyle(
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
          ),
          SizedBox(
            child: Text(
              controller.productsPropertiesList[index].productPropertiesHeadline,
              style: const TextStyle(
                  fontWeight: FontWeight.w500
              ),
            ),
          ),
          const SizedBox(width: 15,),
          SizedBox(
            child: Icon(controller.productsPropertiesList[index].productPropertiesIcons),
          )

        ],
      ),
    );
  }


}
