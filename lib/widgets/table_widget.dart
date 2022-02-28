import 'package:Cardappium/utils/dimensions.dart';
import 'package:Cardappium/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'big_text.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BigText(text: "Mesa 1"),
        SmallText(text: "Pedidos em Andamento"),
        Padding(
            padding: EdgeInsets.only(left: Dimensions.width10),
            child: SizedBox(
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
                    child: SizedBox(
                      height: Dimensions.height45 * 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          BigText(
                            text: "Bitter Orange Juice",
                            color: Colors.black54,
                          ),
                          SmallText(text: "Spicy"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BigText(
                                text: "R\$ 33.0",
                                color: Colors.redAccent,
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    top: Dimensions.height10 / 2,
                                    bottom: Dimensions.height10 / 2,
                                    left: Dimensions.width10,
                                    right: Dimensions.width10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.radius20),
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          BigText(text: "Observações: Sem picles"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )),
        SmallText(text: "Pedidos concluídos"),
        Padding(
            padding: EdgeInsets.only(left: Dimensions.width10),
            child: SizedBox(
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
                    child: SizedBox(
                      height: Dimensions.height45 * 1.8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          BigText(
                            text: "Bitter Orange Juice",
                            color: Colors.black54,
                          ),
                          SmallText(text: "Spicy"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BigText(
                                text: "R\$ 33.0",
                                color: Colors.redAccent,
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    top: Dimensions.height10 / 2,
                                    bottom: Dimensions.height10 / 2,
                                    left: Dimensions.width10,
                                    right: Dimensions.width10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.radius20),
                                    color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )),
      ],
    );
  }
}
