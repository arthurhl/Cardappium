import 'package:Cardappium/routes/route_helper.dart';
import 'package:Cardappium/utils/colors.dart';
import 'package:Cardappium/utils/dimensions.dart';
import 'package:Cardappium/widgets/big_text.dart';
import 'package:Cardappium/widgets/navigation_drawer_widget_res.dart';
import 'package:Cardappium/widgets/small_text.dart';
import 'package:Cardappium/widgets/table_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TablesPage extends StatefulWidget {
  const TablesPage({Key? key}) : super(key: key);

  @override
  State<TablesPage> createState() => _TablesPageState();
}

class _TablesPageState extends State<TablesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawerWidgetRes(),
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
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed(RouteHelper.getInitialRes());
              },
              icon: const Icon(Icons.assignment_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: BigText(
                text: "Mesas",
                size: Dimensions.font26,
              ),
            ),
            SizedBox(
              height: Dimensions.height30 * 6,
              child: Padding(
                padding: EdgeInsets.only(top: 0, left: Dimensions.width30),
                child: Row(
                  children: [
                    const TableCard(),
                    Stack(children: [
                      const TableCard(),
                      Padding(
                        padding: EdgeInsets.only(
                            left: Dimensions.height20 * 2.6,
                            top: Dimensions.width10 / 2.3),
                        child: const CircleAvatar(
                          backgroundColor: AppColors.mainColor,
                          radius: 15,
                          child: Icon(
                            Icons.account_circle_outlined,
                            color: Colors.red,
                            // size: Dimensions.iconSize20,
                          ),
                        ),
                      )
                    ]),
                    const TableCard(),
                    const TableCard(),
                  ],
                ),
              ),
            ),
            const TableWidget(),
          ],
        ),
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
              child: BigText(
                text: "Resetar",
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.mainColor),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height10 / 2,
                      bottom: Dimensions.height10 / 2,
                      left: Dimensions.width10,
                      right: Dimensions.width10),
                  child: Row(
                    children: [
                      BigText(
                        text: "Garçom",
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.warning_amber_outlined,
                        color: Colors.white,
                        size: Dimensions.iconSize16,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.red),
                ),
                SizedBox(
                  height: Dimensions.height20,
                ),
                BigText(text: "Mesa 1"),
              ],
            ),
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
          ],
        ),
      ),
    );
  }
}

class TableCard extends StatefulWidget {
  const TableCard({Key? key}) : super(key: key);

  @override
  _TableCardState createState() => _TableCardState();
}

class _TableCardState extends State<TableCard> {
  bool _table = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: Dimensions.height15,
          bottom: Dimensions.height15,
          left: Dimensions.width20,
          right: Dimensions.width20),
      width: Dimensions.width30 * 3,
      height: Dimensions.height45 * 1.6,
      child: GestureDetector(
        onTap: () {
          setState(() {
            _table = !_table;
          });
        },
        child: Container(
          padding: EdgeInsets.only(
              top: Dimensions.height15,
              bottom: Dimensions.height15,
              left: Dimensions.width20,
              right: Dimensions.width20),
          child: SmallText(
            text: "1",
            color: Colors.white,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius30),
            color: _table ? AppColors.mainColor : Colors.red,
          ),
        ),
      ),
    );
  }
}
