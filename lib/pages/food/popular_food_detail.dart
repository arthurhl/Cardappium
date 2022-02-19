import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/popular_product_controller.dart';
import 'package:food_delivery/routes/route_helper.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_column.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expandable_text_widget.dart';
import 'package:get/get.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodImgSize,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/image/food0.png"),
                  ),
                ),
              ),
            ),
            Positioned(
                top: Dimensions.height45,
                left: Dimensions.width20,
                right: Dimensions.width20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(RouteHelper.initial);
                      },
                      child: AppIcon(
                        icon: Icons.arrow_back_ios,
                        iconColor: Colors.black54,
                        iconSize: Dimensions.iconSize16,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(RouteHelper.cartPage);
                      },
                      child: AppIcon(
                        icon: Icons.shopping_cart_outlined,
                        iconColor: Colors.black54,
                        iconSize: Dimensions.iconSize16,
                      ),
                    ),
                  ],
                )),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodImgSize - 20,
              child: Container(
                  padding: EdgeInsets.only(
                      left: Dimensions.width20,
                      right: Dimensions.width20,
                      top: Dimensions.height20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(Dimensions.radius20),
                        topLeft: Radius.circular(Dimensions.radius20),
                      ),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AppColumn(
                        text: "Chinese Side",
                      ),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      BigText(text: "Introduce"),
                      SizedBox(
                        height: Dimensions.height10 / 2,
                      ),
                      const Expanded(
                        child: SingleChildScrollView(
                          child: ExpandableTextWidget(
                              text: "Lorem ipsum dolor sit amet,"
                                  " consectetur adipiscing elit, sed do eiusmod tempor "
                                  "incididunt ut labore et dolore magna aliqua. Ut enim "
                                  "ad minim veniam, quis nostrud exercitation ullamco "
                                  "laboris nisi ut aliquip ex ea commodo consequat. Duis"
                                  "laboris nisi ut aliquip ex ea commodo consequat. Duis"
                                  "laboris nisi ut aliquip ex ea commodo consequat. Duis"
                                  "laboris nisi ut aliquip ex ea commodo consequat. Duis"
                                  "laboris nisi ut aliquip ex ea commodo consequat. Duis"
                                  "laboris nisi ut aliquip ex ea commodo consequat. Duis"
                                  "laboris nisi ut aliquip ex ea commodo consequat. Duis"
                                  "laboris nisi ut aliquip ex ea commodo consequat. Duis"
                                  " aute irure dolor in reprehenderit in voluptate velit"
                                  " esse cillum dolore eu fugiat nulla pariatur. Excepte"
                                  "ur sint occaecat cupidatat non proident, sunt in culp"
                                  "a qui officia deserunt mollit anim id est laborum."),
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            hintText: 'Observações',
                            hintStyle: TextStyle(color: Colors.black54),
                            border: InputBorder.none),
                      )
                    ],
                  )),
            )
          ],
        ),
        bottomNavigationBar: GetBuilder<PopularProductController>(
          builder: (popularProduct) {
            return Container(
              height: Dimensions.bottomHeightBar,
              padding: EdgeInsets.only(
                  top: Dimensions.height15,
                  bottom: Dimensions.height15,
                  right: Dimensions.width20,
                  left: Dimensions.width20),
              decoration: BoxDecoration(
                  color: AppColors.buttonBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20 * 2),
                    topRight: Radius.circular(Dimensions.radius20 * 2),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        top: Dimensions.height15,
                        bottom: Dimensions.height15,
                        left: Dimensions.width20,
                        right: Dimensions.width20),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius20),
                        color: Colors.white),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            popularProduct.setQuantity(false);
                          },
                          child: const Icon(
                            Icons.remove,
                            color: AppColors.signColor,
                          ),
                        ),
                        SizedBox(
                          width: Dimensions.width10 / 2,
                        ),
                        BigText(text: popularProduct.quantity.toString()),
                        SizedBox(
                          width: Dimensions.width10 / 2,
                        ),
                        GestureDetector(
                          onTap: () {
                            popularProduct.setQuantity(true);
                          },
                          child: const Icon(
                            Icons.add,
                            color: AppColors.signColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(RouteHelper.cartPage);
                    },
                    child: Container(
                      padding: EdgeInsets.only(
                          top: Dimensions.height15,
                          bottom: Dimensions.height15,
                          left: Dimensions.width20,
                          right: Dimensions.width20),
                      child: BigText(
                        text: "R\$10 | Adicionar",
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius20),
                          color: AppColors.mainColor),
                    ),
                  )
                ],
              ),
            );
          },
        ));
  }
}
