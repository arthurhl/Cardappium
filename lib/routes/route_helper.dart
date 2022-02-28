import 'package:Cardappium/pages/cart/cart_page.dart';
import 'package:Cardappium/pages/favorites/favorites_page.dart';
import 'package:Cardappium/pages/food/popular_food_detail.dart';
import 'package:Cardappium/pages/food/recommended_food_detail.dart';
import 'package:Cardappium/pages/home/main_food_page.dart';
import 'package:Cardappium/pages/order/order_page.dart';
import 'package:Cardappium/pages/restaurant/main_food_page_res.dart';
import 'package:Cardappium/pages/restaurant/tables_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = "/";
  static const String popularFood = "/popular-food";
  static const String recommendedFood = "/recommended-food";
  static const String cartPage = "/cart-page";
  static const String initialres = "/main-res";
  static const String tablesPage = "/tables-res";
  static const String favoritePage = "/favorite-food";
  static const String orderPage = "/order-food";

  static String getInitial() => initial;
  static String getPopularFood() => popularFood;
  static String getRecommendedFood() => recommendedFood;
  static String getCartPage() => cartPage;
  static String getInitialRes() => initialres;
  static String getTablesPage() => tablesPage;
  static String getFavoritePage() => favoritePage;
  static String getOrderPage() => orderPage;

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
    GetPage(
      name: initialres,
      page: () => const MainFoodPageRes(),
    ),
    GetPage(
      name: tablesPage,
      page: () => const TablesPage(),
    ),
    GetPage(
      name: favoritePage,
      page: () => const FavoritePage(),
    ),
    GetPage(
      name: orderPage,
      page: () => const OrderPage(),
    ),
  ];
}
