import 'package:Cardappium/routes/route_helper.dart';
import 'package:Cardappium/utils/colors.dart';
import 'package:Cardappium/utils/dimensions.dart';
import 'package:Cardappium/widgets/big_text.dart';
import 'package:Cardappium/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationDrawerWidget extends StatefulWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  State<NavigationDrawerWidget> createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  bool _alert = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: _alert ? Colors.red : AppColors.mainColor,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(
            height: 100,
          ),
          GestureDetector(
              onTap: () {
                setState(
                  () {
                    _alert = true;
                  },
                );
              },
              child:
                  buildMenuItem(text: 'Chamar Garçom', icon: Icons.add_alert)),
          GestureDetector(
              onTap: () {
                Get.toNamed(RouteHelper.orderPage);
              },
              child: buildMenuItem(
                  text: 'Pedidos', icon: Icons.description_outlined)),
          GestureDetector(
              onTap: () {
                Get.toNamed(RouteHelper.cartPage);
              },
              child: buildMenuItem(
                  text: 'Carrinho', icon: Icons.shopping_cart_outlined)),
          GestureDetector(
              onTap: () {
                Get.toNamed(RouteHelper.favoritePage);
              },
              child: buildMenuItem(
                  text: 'Favoritos', icon: Icons.favorite_border)),
          GestureDetector(
              onTap: () {},
              child: buildMenuItem(
                  text: 'Pagamento', icon: Icons.payment_outlined)),
          GestureDetector(
            onTap: () {
              Get.toNamed(RouteHelper.tablesPage);
            },
            child: buildMenuItem(
                text: 'Entrar como Restaurante',
                icon: Icons.account_circle_outlined),
          ),
          SizedBox(
            height: Dimensions.height45 * 2,
          ),
          Container(
            child: !_alert
                ? null
                : Column(
                    children: [
                      BigText(
                        text: "Chamando Garçom",
                        color: Colors.white,
                        size: Dimensions.font16,
                      ),
                      SmallText(
                        text: "Mesa 1",
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: Dimensions.height10,
                      ),
                      const Icon(
                        Icons.warning_amber_outlined,
                        color: Colors.white,
                        size: 60,
                      ),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(
                            () {
                              _alert = false;
                            },
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.only(
                              top: Dimensions.height10,
                              bottom: Dimensions.height10,
                              left: Dimensions.width20,
                              right: Dimensions.width20),
                          child: BigText(
                            text: "Cancelar",
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius20),
                              color: AppColors.mainColor),
                        ),
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
}) {
  const color = Colors.white;

  return ListTile(
    leading: Icon(
      icon,
      color: color,
    ),
    title: Text(
      text,
      style: const TextStyle(color: color),
    ),
  );
}
