
import 'package:flutter/material.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/responsive.dart';

class CustomResultText extends StatelessWidget {
  final String leftTextt;
  final String rightTextt;
  final bool leftBold;
  final bool rightBold;
  const CustomResultText({super.key, required this.leftTextt, required this.rightTextt, required this.leftBold, required this.rightBold});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          leftTextt,
          style: TextStyle(
              fontSize: 16,
              fontWeight:leftBold ==true? FontWeight.w400: FontWeight.w400,
              color: AppColor.whiteColor,
              fontFamily: "Poppins"),
          textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context)),
        ),
        Text(
          rightTextt,
          style: TextStyle(
            fontSize: 16,
            fontWeight: rightBold ==true? FontWeight.w700: FontWeight.w400,
            fontFamily: "Poppins",
            color: AppColor.whiteColor,
          ),
          textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context)),
        ),
      ],
    );
  }
}
