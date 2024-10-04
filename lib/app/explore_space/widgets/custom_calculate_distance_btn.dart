import 'package:flutter/material.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/responsive.dart';

class CustomCalculateDistanceBtn extends StatelessWidget {
  final String textt;
  const CustomCalculateDistanceBtn({super.key, required this.textt});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: twentyPixelHeight(context) * 2,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColor.darkBlue,
              AppColor.blue,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: Text(
          textt,
          style: TextStyle(
              fontSize: 16,
              color: AppColor.whiteColor,
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins"),
        ),
      ),
    );
  }
}
