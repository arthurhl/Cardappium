import 'package:flutter/material.dart';
import 'package:food_delivery/pages/home/food_page_body.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/animated_search_bar.dart';
import 'package:food_delivery/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    //print("height: " + MediaQuery.of(context).size.height.toString());

    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: Dimensions.height45, bottom: Dimensions.height15),
            padding: EdgeInsets.only(
                left: Dimensions.width20, right: Dimensions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          text: "Vale das Águas",
                          color: Colors.black54,
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  child: const AnimatedSearchBar(),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius15),
                    color: AppColors.mainColor,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(child: SingleChildScrollView(child: FoodPageBody()))
        ],
      ),
    );
  }
}
