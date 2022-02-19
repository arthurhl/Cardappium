import 'package:food_delivery/pages/cart/cart_page.dart';
import 'package:food_delivery/pages/food/popular_food_detail.dart';
import 'package:food_delivery/pages/food/recommended_food_detail.dart';
import 'package:food_delivery/pages/home/main_food_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = "/";
  static const String popularFood = "/popular-food";
  static const String recommendedFood = "/recommended-food";
  static const String cartPage = "/cart-page";

  static String getInitial() => initial;
  static String getPopularFood() => popularFood;
  static String getRecommendedFood() => recommendedFood;
  static String getCartPage() => cartPage;

  static List<GetPage> routes = [
    GetPage(
      name: initial,
      page: () => const MainFoodPage(),
    ),
    GetPage(
      name: popularFood,
      page: () => const PopularFoodDetail(),
    ),
    GetPage(
      name: recommendedFood,
      page: () => const RecommendedFoodDetail(),
    ),
    GetPage(
      name: cartPage,
      page: () => const CartPage(),
    ),
  ];
}
