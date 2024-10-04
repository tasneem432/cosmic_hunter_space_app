
import 'package:flutter/material.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/responsive.dart';

class CustomTermsConditionText extends StatelessWidget {
  const CustomTermsConditionText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      const TextSpan(
        children: [
          TextSpan(
            text: 'I agree the',
            style: TextStyle(
              color: AppColor.blackColor,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          TextSpan(
            text: ' Privacy Police ',
            style: TextStyle(
              color: AppColor.blackColor,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          TextSpan(
            text: 'and',
            style: TextStyle(
              color: AppColor.blackColor,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          TextSpan(
            text: '  Terms & Conditions ',
            style: TextStyle(
              color: AppColor.blackColor,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          TextSpan(
            text: 'of this E-commerce ',
            style: TextStyle(
              color: AppColor.blackColor,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.start,
      textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context)),
    );
  }
}
