import 'package:Cardappium/utils/dimensions.dart';
import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;

  BigText(
      {Key? key,
      this.color = const Color(0xFF332d2b),
      required this.text,
      this.size = 16,
      this.overFlow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        maxLines: 1,
        overflow: overFlow,
        style: TextStyle(
          letterSpacing: 0.8,
          color: color,
          fontSize: size == 0 ? Dimensions.font20 : size,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ));
  }
}
