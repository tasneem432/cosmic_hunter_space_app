import 'package:flutter/material.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/blank_space.dart';
import 'package:space_app/general/utils/responsive.dart';

class CustomTrendingTourBox extends StatelessWidget {
  const CustomTrendingTourBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: twentyPixelWidth(context) * 5,
      height: twentyPixelHeight(context) * 5,
      margin: EdgeInsets.only(right: twelvePixelWidth(context)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            AppColor.blue.withOpacity(.5),
            AppColor.whiteColor.withOpacity(.5)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(twentyPixelHeight(context)*.1),
          SizedBox(
            width: double.infinity,
            height: twentyPixelHeight(context) * 4.5,
            child: Center(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/spaces/moon.png",
                    width: twentyPixelWidth(context)*4.5,
                    height: twentyPixelWidth(context)*4.5,
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Center(
            child: Text(
              "Marse",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Poppins",
                  color: AppColor.whiteColor),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}