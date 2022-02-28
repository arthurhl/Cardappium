import 'package:Cardappium/controllers/popular_product_controller.dart';
import 'package:Cardappium/routes/route_helper.dart';
import 'package:Cardappium/utils/colors.dart';
import 'package:Cardappium/utils/dimensions.dart';
import 'package:Cardappium/widgets/app_icon.dart';
import 'package:Cardappium/widgets/big_text.dart';
import 'package:Cardappium/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
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
                            text: "Favoritos",
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
              child:
                  GestureDetector(
                    onTap: (){
                      Get.toNamed(RouteHelper.popularFood);
                    },
                    child: ListView.builder(
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
                                    bottom: Dimensions.height10 / 2),
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
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: Dimensions.height45 * 1.4,
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
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              BigText(
                                                text: "R\$ 33.0",
                                                color: Colors.redAccent,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        Dimensions
                                                            .radius20),
                                                    color: Colors.white),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(
                                            top: Dimensions.height20,
                                            bottom: Dimensions.height20,
                                            left: Dimensions.width20,
                                            right: Dimensions.width20),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(
                                                Dimensions.radius20),
                                            color: Colors.white),
                                        child: const Icon(
                                          Icons.favorite,
                                          color: AppColors.mainColor,
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      ),
                  )

            ),
          ),
        ],
      ),
    );
  }
}
