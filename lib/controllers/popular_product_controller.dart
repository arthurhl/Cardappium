import 'package:Cardappium/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {

  int _quantity = 1;
  int get quantity => _quantity;

  void setQuantity(bool isIncrement) {
    if (isIncrement) {
      _quantity = checkQuantity(_quantity + 1);
    } else {
      _quantity = checkQuantity(_quantity - 1);
    }
    update();
  }

  int checkQuantity(int quantity) {
    if (_quantity <= 0) {
      Get.snackbar(
        "Quantidade de Itens",
        "Você não pode pedir um número negativo",
        backgroundColor: AppColors.mainColor,
        colorText: Colors.white,
      );
      return 1;
    } else if (_quantity >= 10) {
      Get.snackbar(
        "Quantidade de Itens",
        "Você não pode pedir mais que 10",
        backgroundColor: AppColors.mainColor,
        colorText: Colors.white,
      );
      return 9;
    } else {
      return quantity;
    }
  }


}
