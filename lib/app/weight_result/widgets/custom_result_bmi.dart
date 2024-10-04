
import 'package:flutter/material.dart';
import 'package:space_app/app/weight_result/widgets/custom_result_text.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/blank_space.dart';
import 'package:space_app/general/utils/responsive.dart';

class CustomResultBmi extends StatelessWidget {
  const CustomResultBmi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.lightBlue.withOpacity(.3),
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: EdgeInsets.only(
          left: twentyPixelWidth(context) * .5,
          right: twentyPixelWidth(context) * .5,
          top: twentyPixelHeight(context) * .8,
          bottom: twentyPixelHeight(context) * .8,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomResultText(
              leftTextt: "Venus (g= 8.7 m/s2)",
              rightTextt: "45.2kg",
              leftBold: true,
              rightBold: false,
            ),
            verticalSpace(twentyPixelHeight(context) * .5),
            const CustomResultText(
              leftTextt: "Mercury (g= 3.7 m/s2)",
              rightTextt: "18.8kg",
              leftBold: true,
              rightBold: false,
            ),
            verticalSpace(twentyPixelHeight(context) * .5),
            const CustomResultText(
              leftTextt: "Jupiter (g= 24.79 m/s2)",
              rightTextt: "126.5kg",
              leftBold: true,
              rightBold: false,
            ),
            verticalSpace(twentyPixelHeight(context) * .5),
            const CustomResultText(
              leftTextt: "Neptune (g= 11.15 m/s2)",
              rightTextt: "56.8kg",
              leftBold: true,
              rightBold: false,
            ),
          ],
        ),
      ),
    );
  }
}
