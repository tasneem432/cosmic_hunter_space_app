import 'package:flutter/material.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/blank_space.dart';
import 'package:space_app/general/utils/responsive.dart';

class CustomUpcomingTextItem extends StatelessWidget {
  final String title;
  final String description;
  const CustomUpcomingTextItem(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(twentyPixelHeight(context) * .5),
        Text(
          title,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins",
              color: AppColor.whiteColor),
        ),
        Text(
          description,
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins",
              color: AppColor.whiteColor),
        ),
      ],
    );
  }
}
