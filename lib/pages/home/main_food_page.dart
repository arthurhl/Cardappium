import 'package:Cardappium/pages/home/food_page_body.dart';
import 'package:Cardappium/utils/colors.dart';
import 'package:Cardappium/utils/dimensions.dart';
import 'package:Cardappium/widgets/animated_search_bar.dart';
import 'package:Cardappium/widgets/navigation_drawer_widget.dart';
import 'package:Cardappium/widgets/small_text.dart';
import 'package:flutter/material.dart';

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
      drawer: const NavigationDrawerWidget(),
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        iconTheme: const IconThemeData(color: AppColors.mainColor),
        title: RichText(
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
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: Dimensions.height10, bottom: Dimensions.height15),
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
                              text: "Vale das Águas",
                              style: TextStyle(
                                color: AppColors.mainColor,
                                fontSize: Dimensions.font16,
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: Dimensions.height10 / 2,
                    ),
                    Row(
                      children: [
                        SmallText(
                          size: Dimensions.font20,
                          text: "Mesa 1",
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
