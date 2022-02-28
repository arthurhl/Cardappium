import 'package:Cardappium/routes/route_helper.dart';
import 'package:Cardappium/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationDrawerWidgetRes extends StatelessWidget {
  const NavigationDrawerWidgetRes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.mainColor,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(height: 100,),
          GestureDetector(
            onTap: () {
              Get.toNamed(RouteHelper.initial);
            },
            child: buildMenuItem(
                text: 'Entrar como Cliente',
                icon: Icons.account_circle_outlined
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(RouteHelper.initialres);
            },
            child: buildMenuItem(
                text: 'Editar Pratos e Mesas',
                icon: Icons.assignment_outlined
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(RouteHelper.tablesPage);
            },
            child: buildMenuItem(
                text: 'Mesas Disponíveis',
                icon: Icons.account_tree_outlined
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
    leading: Icon(icon, color: color,),
    title: Text(text, style: const TextStyle(color: color),),

  );
}
