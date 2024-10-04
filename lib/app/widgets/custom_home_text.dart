import 'package:flutter/material.dart';
import 'package:space_app/general/config/colors.dart';

class CustomHomeText extends StatelessWidget {
  final String leftText;
  final String seeAllUrl;
  const CustomHomeText({super.key, required this.leftText, required this.seeAllUrl, });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftText,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColor.whiteColor,
              fontFamily: "Poppins"),
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, seeAllUrl);
          },
          child: Text(
            "see all",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColor.whiteColor,
                fontFamily: "Poppins"),
          ),
        )
      ],
    );
  }
}
