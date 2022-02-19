import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  //size of screen divided by p
  //s21ultradevice 1018p
  //pixel2device 683p
  static double pageView = screenHeight / 2.40;
  static double pageViewContainer = screenHeight / 3.10;
  static double pageViewTextContainer = screenHeight / 7.3;

  static double height10 = screenHeight / 101.8;
  static double height15 = screenHeight / 67.8;
  static double height20 = screenHeight / 50.9;
  static double height30 = screenHeight / 33.9;
  static double height45 = screenHeight / 19.6; //21.6

  static double bottomHeightBar = screenHeight / 5.9;

  static double width10 = screenHeight / 101.8;
  static double width15 = screenHeight / 67.8;
  static double width20 = screenHeight / 50.9;
  static double width30 = screenHeight / 33.9;

  static double font16 = screenHeight / 55;
  static double font20 = screenHeight / 60;
  static double font26 = screenHeight / 45;

  static double radius15 = screenHeight / 67.8;
  static double radius20 = screenHeight / 50.9;
  static double radius30 = screenHeight / 33.9;

  static double iconSize24 = screenHeight / 25;
  static double iconSize20 = screenHeight / 30;
  static double iconSize16 = screenHeight / 40;

  static double listViewImgSize = screenWidth / 4;
  static double listViewTextContSize = screenWidth / 4.5;

  static double popularFoodImgSize = screenHeight / 2.41;
}
