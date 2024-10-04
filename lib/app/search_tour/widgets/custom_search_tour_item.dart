import 'package:flutter/material.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/blank_space.dart';
import 'package:space_app/general/utils/responsive.dart';

class CustomSearchTourItem extends StatelessWidget {
  const CustomSearchTourItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: twentyPixelHeight(context) * 5.5,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.only(bottom: twentyPixelHeight(context) * .5),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/spaces/marse.png")),
          ),
          horizontalSpace(twentyPixelWidth(context) * .5),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Search tour item",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins",
                  color: AppColor.whiteColor,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Operator: ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                      color: AppColor.whiteColor,
                    ),
                    
                  ),

                  Text(
                    "ISRO ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                      color: AppColor.whiteColor,
                    ),
                    
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Price: ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                      color: AppColor.whiteColor,
                    ),
                    
                  ),

                  Text(
                    "\$6M",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                      color: AppColor.whiteColor,
                    ),
                    
                  ),
                ],

                
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Type: ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                      color: AppColor.whiteColor,
                    ),
                    
                  ),

                  Text(
                    "Round trip",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                      color: AppColor.whiteColor,
                    ),
                    
                  ),
                ],
              ),
            ],
          ),
          Expanded(child: SizedBox()),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: twentyPixelWidth(context) * 3.5,
                height: twentyPixelHeight(context) * 1.5,
                decoration: BoxDecoration(
                    color: AppColor.darkBlue,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text(
                    "Details",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        color: AppColor.whiteColor),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
