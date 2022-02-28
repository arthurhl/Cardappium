import 'package:Cardappium/routes/route_helper.dart';
import 'package:Cardappium/utils/colors.dart';
import 'package:Cardappium/utils/dimensions.dart';
import 'package:Cardappium/widgets/app_icon.dart';
import 'package:Cardappium/widgets/big_text.dart';
import 'package:Cardappium/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

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
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
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
                            text: "Pedidos",
                            color: Colors.black54,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: Dimensions.width30 * 4,
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
                child: GestureDetector(
                  onTap: (){
                    Get.toNamed(RouteHelper.popularFood);
                  },
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (_, index) {
                      return SizedBox(
                        height: Dimensions.height20 * 6,
                        width: double.maxFinite,
                        child: Row(
                          children: [
                            Container(
                              width: Dimensions.height20 * 6,
                              height: Dimensions.height20 * 6,
                              margin: EdgeInsets.only(
                                  top: Dimensions.height10,
                                  bottom: Dimensions.height10 / 2),
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/image/food0.png"),
                                  ),
                                  borderRadius:
                                      BorderRadius.circular(Dimensions.radius20),
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: Dimensions.width10,
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: Dimensions.height45 * 1.8,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        BigText(
                                          text: "Macarrão",
                                          color: Colors.black54,
                                        ),
                                        SmallText(text: "Picante"),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            BigText(
                                              text: "R\$ 33.0",
                                              color: Colors.redAccent,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          Dimensions.radius20),
                                                  color: Colors.white),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          padding: EdgeInsets.only(
                                              top: Dimensions.height10,
                                              bottom: Dimensions.height10,
                                              left: Dimensions.width10,
                                              right: Dimensions.width10),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(
                                                  Dimensions.radius20),
                                              color: Colors.white),
                                          child: const Icon(
                                            Icons.circle,
                                            color: AppColors.mainColor,
                                          )),
                                      SizedBox(
                                        height: Dimensions.height10 / 2,
                                      ),
                                      SmallText(text: "Em Andamento")
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
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
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white),
              child: Row(
                children: [
                  BigText(
                    text: "R\$100",
                    color: AppColors.mainColor,
                  ),
                ],
              ),
            ),
            BigText(text: "Mesa 1"),
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              child: BigText(
                text: "Pagar",
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.mainColor),
            )
          ],
        ),
      ),
    );
  }
}
