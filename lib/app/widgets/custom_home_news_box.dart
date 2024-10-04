import 'package:flutter/material.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/blank_space.dart';
import 'package:space_app/general/utils/responsive.dart';

class CustomHomeNewsBox extends StatelessWidget {
  const CustomHomeNewsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: twentyPixelWidth(context) * 9.5,
      height: twentyPixelHeight(context)*8.5,
      margin: EdgeInsets.only(
        right: twelvePixelWidth(context)
      ),
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
          SizedBox(
            width: double.infinity,
            height: twentyPixelHeight(context) * 4.5,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/spaces/moon.png",
                  fit: BoxFit.cover,
                )),
          ),
          verticalSpace(twentyPixelHeight(context) * .5),
          Padding(
            padding: EdgeInsets.only(
                left: twelvePixelWidth(context) * .5,
                right: twelvePixelWidth(context) * .5),
            child: Text(
              "NASA sucssessfully landed on moon",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Poppins",
                  color: AppColor.blackColor),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: twelvePixelWidth(context) * .5,
                right: twelvePixelWidth(context) * .5),
            child: Text(
              "NASA sucssessfully landed on moon NASA sucssessfully landed on moon NASA sucssessfully landed on moon",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins",
                  color: AppColor.whiteColor),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          verticalSpace(twentyPixelHeight(context) * .5),
        ],
      ),
    );
  }
}
