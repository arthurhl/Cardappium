import 'package:Cardappium/utils/colors.dart';
import 'package:Cardappium/utils/dimensions.dart';
import 'package:Cardappium/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimensions.font26,
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          children: [
            Wrap(
                children: List.generate(
              5,
              (index) =>  Icon(
                Icons.star,
                color: AppColors.mainColor,
                size: Dimensions.height15,
              ),
            )),
            SizedBox(
              width: Dimensions.width10/2
            ),
            SmallText(text: "4.5"),
             SizedBox(
              width: Dimensions.width20,
            ),
            SmallText(text: "1287"),
            SizedBox(
              width: Dimensions.width10/2,
            ),
            SmallText(text: "comentários")
          ],
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const IconAndTextWidget(
                icon: Icons.circle_sharp,
                text: "Normal",
                iconColor: AppColors.iconColor1),

            SizedBox(
              width: Dimensions.width20,
            ),
            //  IconAndTextWidget(
            //     icon: Icons.location_on,
            //    text: "1.7km",
            //    iconColor: AppColors.mainColor),
            const IconAndTextWidget(
                icon: Icons.access_time_rounded,
                text: "35min",
                iconColor: AppColors.iconColor2),
          ],
        )
      ],
    );
  }
}
