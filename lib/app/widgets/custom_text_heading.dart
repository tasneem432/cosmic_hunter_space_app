

import 'package:flutter/material.dart';
import 'package:space_app/general/config/colors.dart';

class CustomTextHeading extends StatelessWidget {
  final String textt;
  final bool? isRequired;

  const CustomTextHeading(
      {super.key, required this.textt,  this.isRequired});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textt,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColor.whiteColor,
              fontFamily: "Poppins"),
        ),
        Text(
          isRequired ==true?"*required":"",
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColor.redColor,
              fontFamily: "Poppins"),
        ),
      ],
    );
  }
}
