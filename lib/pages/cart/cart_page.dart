import 'package:Cardappium/controllers/popular_product_controller.dart';
import 'package:Cardappium/routes/route_helper.dart';
import 'package:Cardappium/utils/colors.dart';
import 'package:Cardappium/utils/dimensions.dart';
import 'package:Cardappium/widgets/app_icon.dart';
import 'package:Cardappium/widgets/big_text.dart';
import 'package:Cardappium/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
                              text: "Carrinho",
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
              child: GestureDetector(
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
                              child: Container(
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
                                          padding: EdgeInsets.only(
                                              top:
                                                  Dimensions.height10 / 2,
                                              bottom:
                                                  Dimensions.height10 / 2,
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
                                                //  popularProduct
                                               //       .setQuantity(false);
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
                                                  text:"1" //popularProduct
                                                    //  .quantity
                                                     //.toString()
                              ),
                                              SizedBox(
                                                width:
                                                    Dimensions.width10 /
                                                        2,
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                 // popularProduct
                                                    //  .setQuantity(true);
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
                  ),
              ),
            ),
          ],
        ),
        bottomNavigationBar:
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
                        BigText(text: "1")//popularProduct.quantity.toString()),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                title: Text("Seu pedido foi concluído"),
                                content: Text("Navegar para meus pedidos?"),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context,
                                                rootNavigator: true)
                                            .pop();
                                      },
                                      child: Text("Cancelar")),
                                  TextButton(
                                      onPressed: () {
                                        Get.toNamed(RouteHelper.orderPage);
                                      },
                                      child: Text("Ok")),
                                ],
                              ));
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
            ),

    );
  }
}
