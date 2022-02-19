import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/popular_product_controller.dart';
import 'package:food_delivery/routes/route_helper.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expandable_text_widget.dart';
import 'package:get/get.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              toolbarHeight: Dimensions.height30 * 2.4,
              title: Positioned(
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
                        child: const AppIcon(
                          icon: Icons.shopping_cart_outlined,
                          iconColor: Colors.black54,
                        ),
                      ),
                    ],
                  )),
              bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(20),
                  child: Container(
                    child: Center(
                      child: BigText(
                        size: Dimensions.font26,
                        text: "Chinese Side",
                      ),
                    ),
                    width: double.maxFinite,
                    padding: const EdgeInsets.only(top: 5, bottom: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Dimensions.radius20),
                          topRight: Radius.circular(Dimensions.radius20),
                        )),
                  )),
              pinned: true,
              backgroundColor: AppColors.yellowColor,
              expandedHeight: 400,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/image/food0.png",
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: const [
                        ExpandableTextWidget(
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
                                "a qui officia deserunt mollit anim id est laborum."
                                "Lorem ipsum dolor sit amet,"
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
                                "a qui officia deserunt mollit anim id est laborum."
                                "Lorem ipsum dolor sit amet,"
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
                        TextField(
                          decoration: InputDecoration(
                              hintText: 'Observações',
                              hintStyle: TextStyle(color: Colors.black54),
                              border: InputBorder.none),
                        )
                      ],
                    ),
                    margin: EdgeInsets.only(
                        left: Dimensions.width20, right: Dimensions.width20),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: GetBuilder<PopularProductController>(
          builder: (popularProduct) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: Dimensions.width20 * 2.5,
                    right: Dimensions.width20 * 2.5,
                    top: Dimensions.height10,
                    bottom: Dimensions.height10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          popularProduct.setQuantity(false);
                        },
                        child: AppIcon(
                            iconSize: Dimensions.iconSize16,
                            iconColor: Colors.white,
                            backgroundColor: AppColors.mainColor,
                            icon: Icons.remove),
                      ),
                      BigText(
                        text: "R\$12.88 "
                                " X " +
                            popularProduct.quantity.toString(),
                        color: AppColors.mainBlackColor,
                        size: Dimensions.font26,
                      ),
                      GestureDetector(
                        onTap: () {
                          popularProduct.setQuantity(true);
                        },
                        child: AppIcon(
                            iconSize: Dimensions.iconSize16,
                            iconColor: Colors.white,
                            backgroundColor: AppColors.mainColor,
                            icon: Icons.add),
                      ),
                    ],
                  ),
                ),
                Container(
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
                              top: Dimensions.height20,
                              bottom: Dimensions.height20,
                              left: Dimensions.width20,
                              right: Dimensions.width20),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius20),
                              color: Colors.white),
                          child: const Icon(
                            Icons.favorite,
                            color: AppColors.mainColor,
                          )),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(RouteHelper.cartPage);
                        },
                        child: Container(
                          padding: EdgeInsets.only(
                              top: Dimensions.height20,
                              bottom: Dimensions.height20,
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
                ),
              ],
            );
          },
        ));
  }
}
