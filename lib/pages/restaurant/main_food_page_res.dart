import 'package:Cardappium/routes/route_helper.dart';
import 'package:Cardappium/utils/colors.dart';
import 'package:Cardappium/utils/dimensions.dart';
import 'package:Cardappium/widgets/big_text.dart';
import 'package:Cardappium/widgets/navigation_drawer_widget_res.dart';
import 'package:Cardappium/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainFoodPageRes extends StatefulWidget {
  const MainFoodPageRes({Key? key}) : super(key: key);

  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPageRes> {
  double _currentSliderValue = 5;
  @override
  Widget build(BuildContext context) {
    //print("height: " + MediaQuery.of(context).size.height.toString());

    return Scaffold(
      drawer: const NavigationDrawerWidgetRes(),
      appBar: AppBar(
        toolbarHeight: Dimensions.height30 * 2,
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
                Get.toNamed(RouteHelper.getTablesPage());
              },
              icon: const Icon(Icons.account_tree_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: Dimensions.height45,
                  bottom: 0,
                  left: Dimensions.width30 * 2,
                  right: Dimensions.width30 * 2),
              child: BigText(
                text: "Nome do Restaurante",
                size: Dimensions.font26,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: Dimensions.height45,
                  bottom: Dimensions.height45,
                  left: Dimensions.width30 * 2,
                  right: Dimensions.width30 * 2),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Editar nome do Restaurante',
                  hintStyle: TextStyle(color: Colors.black54),
                ),
              ),
            ),
            BigText(
              text: "Quantidade de Mesas",
              size: Dimensions.font26,
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: Dimensions.height30,
                  bottom: Dimensions.height30,
                  left: Dimensions.width30,
                  right: Dimensions.width30),
              child: Slider(
                activeColor: AppColors.mainColor,
                thumbColor: AppColors.mainColor,
                value: _currentSliderValue,
                max: 15,
                divisions: 15,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: Dimensions.height10),
              child: BigText(
                text: "Editar Destaques",
                size: Dimensions.font26,
              ),
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(
                          left: Dimensions.width30,
                          right: Dimensions.width20,
                          bottom: Dimensions.height10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add_a_photo,
                            color: Colors.black54,
                            size: Dimensions.iconSize16,
                          ),
                          SizedBox(
                            width: Dimensions.width30,
                          ),
                          Expanded(
                            child: Container(
                              height: Dimensions.height45 * 4.8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight:
                                      Radius.circular(Dimensions.radius20),
                                  bottomRight:
                                      Radius.circular(Dimensions.radius20),
                                ),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: Dimensions.width10,
                                    right: Dimensions.width10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: Dimensions.height10 / 2,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SmallText(text: "Destaque 1"),
                                        const Icon(
                                          Icons.close,
                                          color: AppColors.mainColor,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: Dimensions.height10 / 2,
                                    ),
                                    const TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Nome do Prato',

                                        hintStyle:
                                            TextStyle(color: Colors.black54),
                                      ),
                                    ),
                                    SizedBox(
                                      height: Dimensions.height10,
                                    ),
                                    const TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Descrição do prato',
                                        hintStyle:
                                            TextStyle(color: Colors.black54),
                                      ),
                                    ),
                                    SizedBox(
                                      height: Dimensions.height15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: const [
                                        Icon(
                                          Icons.circle_sharp,
                                          color: AppColors.yellowColor,
                                        ),
                                        Flexible(
                                          child: TextField(
                                              decoration: InputDecoration(
                                                  hintText: "Categoria",
                                                  contentPadding:
                                                      EdgeInsets.all(5))),
                                        ),
                                        Icon(
                                          Icons.access_time_rounded,
                                          color: AppColors.yellowColor,
                                        ),
                                        Flexible(
                                          child: TextField(
                                              decoration: InputDecoration(
                                                  hintText: "Tempo de preparo",
                                                  contentPadding:
                                                      EdgeInsets.all(5))),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height15,
                  bottom: Dimensions.height15,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              child: BigText(
                text: "Adicionar Destaque",
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.mainColor),
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BigText(
                text: "Editar Refeições",
                size: Dimensions.font26,
              ),
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(
                          left: Dimensions.width20,
                          right: Dimensions.width20,
                          bottom: Dimensions.height10),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.add_a_photo,
                            color: Colors.black54,
                          ),
                          SizedBox(
                            width: Dimensions.width30,
                          ),
                          Expanded(
                            child: Container(
                              height: Dimensions.height45 * 4.8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight:
                                      Radius.circular(Dimensions.radius20),
                                  bottomRight:
                                      Radius.circular(Dimensions.radius20),
                                ),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: Dimensions.width10,
                                    right: Dimensions.width10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: Dimensions.height10 / 2,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SmallText(text: "Refeição 1"),
                                        const Icon(
                                          Icons.close,
                                          color: AppColors.mainColor,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: Dimensions.height10 / 2,
                                    ),
                                    const TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Nome do Prato',
                                        hintStyle:
                                            TextStyle(color: Colors.black54),
                                      ),
                                    ),
                                    SizedBox(
                                      height: Dimensions.height10,
                                    ),
                                    const TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Descrição do prato',
                                        hintStyle:
                                            TextStyle(color: Colors.black54),
                                      ),
                                    ),
                                    SizedBox(
                                      height: Dimensions.height15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: const [
                                        Icon(
                                          Icons.circle_sharp,
                                          color: AppColors.yellowColor,
                                        ),
                                        Flexible(
                                          child: TextField(
                                              decoration: InputDecoration(
                                                  hintText: "Categoria",
                                                  contentPadding:
                                                      EdgeInsets.all(5))),
                                        ),
                                        Icon(
                                          Icons.access_time_rounded,
                                          color: AppColors.yellowColor,
                                        ),
                                        Flexible(
                                          child: TextField(
                                              decoration: InputDecoration(
                                                  hintText: "Tempo de preparo",
                                                  contentPadding:
                                                      EdgeInsets.all(5))),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height15,
                  bottom: Dimensions.height15,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              child: BigText(
                text: "Adicionar Refeição",
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.mainColor),
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
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
                  top: Dimensions.height15,
                  bottom: Dimensions.height15,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(RouteHelper.tablesPage);
              },
              child: Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height15,
                    bottom: Dimensions.height15,
                    left: Dimensions.width20,
                    right: Dimensions.width20),
                child: BigText(
                  text: "Salvar Alterações",
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: AppColors.mainColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
