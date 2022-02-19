import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/cart_controller.dart';
import 'package:food_delivery/pages/food/popular_food_detail.dart';
import 'package:food_delivery/controllers/popular_product_controller.dart';
import 'package:food_delivery/pages/home/main_food_page.dart';
import 'package:food_delivery/routes/route_helper.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/small_text.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Positioned(
                top: Dimensions.height45,
                left: Dimensions.width20,
                right: Dimensions.width20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(RouteHelper.popularFood);
                      },
                      child: AppIcon(
                        icon: Icons.arrow_back_ios,
                        iconColor: Colors.white,
                        backgroundColor: AppColors.mainColor,
                        iconSize: Dimensions.iconSize16,
                      ),
                    ),
                    Column(
                      children: [
                        RichText(
                          text: TextSpan(
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  ?.copyWith(fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(
                                  text: "Card",
                                  style: TextStyle(
                                    color: AppColors.mainColor,
                                    fontSize: Dimensions.font26,
                                  ),
                                ),
                                TextSpan(
                                    text: "app",
                                    style: TextStyle(
                                      color: AppColors.yellowColor,
                                      fontSize: Dimensions.font26,
                                    )),
                                TextSpan(
                                    text: "ium",
                                    style: TextStyle(
                                      color: AppColors.mainColor,
                                      fontSize: Dimensions.font26,
                                    ))
                              ]),
                        ),
                        SizedBox(
                          height: Dimensions.height10 / 2,
                        ),
                        Row(
                          children: [
                            SmallText(
                              size: Dimensions.font20,
                              text: "Itens Selecionados:",
                              color: Colors.black54,
                            ),
                          ],
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(RouteHelper.initial);
                      },
                      child: AppIcon(
                        icon: Icons.home_outlined,
                        iconColor: Colors.white,
                        backgroundColor: AppColors.mainColor,
                        iconSize: Dimensions.iconSize16,
                      ),
                    ),
                    /* AppIcon(
                    icon: Icons.shopping_cart,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    iconSize: Dimensions.iconSize24,
                  ),*/
                  ],
                )),
            Positioned(
              top: Dimensions.height20 * 5.3,
              left: Dimensions.width20,
              right: Dimensions.width20,
              bottom: 0,
              child: Container(
                margin: EdgeInsets.only(top: Dimensions.height15),
                child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: GetBuilder<PopularProductController>(
                      builder: (popularProduct) {
                        return ListView.builder(
                          itemCount: 10,
                          itemBuilder: (_, index) {
                            return Container(
                              height: Dimensions.height20 * 6,
                              width: double.maxFinite,
                              child: Row(
                                children: [
                                  Container(
                                    width: Dimensions.height20 * 6,
                                    height: Dimensions.height20 * 6,
                                    margin: EdgeInsets.only(
                                        top: Dimensions.height10,
                                        bottom: Dimensions.height10/2),
                                    decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              "assets/image/food0.png"),
                                        ),
                                        borderRadius: BorderRadius.circular(
                                            Dimensions.radius20),
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: Dimensions.width10,
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: Dimensions.height45*1.8,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          BigText(
                                            text: "Bitter Orange Juice",
                                            color: Colors.black54,
                                          ),
                                          SmallText(text: "Spicy"),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              BigText(
                                                text: "R\$ 33.0",
                                                color: Colors.redAccent,
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(
                                                    top: Dimensions.height10/2,
                                                    bottom: Dimensions.height10/2,
                                                    left: Dimensions.width10,
                                                    right: Dimensions.width10),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            Dimensions
                                                                .radius20),
                                                    color: Colors.white),
                                                child: Row(
                                                  children: [
                                                    GestureDetector(
                                                      onTap: () {
                                                        popularProduct
                                                            .setQuantity(false);
                                                      },
                                                      child: const Icon(
                                                        Icons.remove,
                                                        color:
                                                            AppColors.signColor,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width:
                                                          Dimensions.width10 /
                                                              2,
                                                    ),
                                                    BigText(
                                                        text: popularProduct
                                                            .quantity
                                                            .toString()),
                                                    SizedBox(
                                                      width:
                                                          Dimensions.width10 /
                                                              2,
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        popularProduct
                                                            .setQuantity(true);
                                                      },
                                                      child: const Icon(
                                                        Icons.add,
                                                        color:
                                                            AppColors.signColor,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                    )),
              ),
            ),
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
                        top: Dimensions.height10,
                        bottom: Dimensions.height10,
                        left: Dimensions.width10,
                        right: Dimensions.width20),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius20),
                        color: Colors.white),
                    child: Row(
                      children: [
                        AppIcon(
                          icon: Icons.shopping_cart,
                          iconColor: AppColors.mainColor,
                         backgroundColor: Colors.white,
                          iconSize: Dimensions.iconSize16,
                        ),
                        BigText(text: popularProduct.quantity.toString()),

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
                        text: "R\$200 | Finalizar Pedido",
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
