import 'package:flutter/material.dart';
import 'package:space_app/app/explore_space/screens/earth_to_moon_distance.dart';
import 'package:space_app/app/explore_space/widgets/custom_calculate_distance_btn.dart';
import 'package:space_app/app/widgets/custom_appbar.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/blank_space.dart';
import 'package:space_app/general/utils/responsive.dart';

class PlanetDistance extends StatelessWidget {
  static const pageRoute = '/planet-distance';
  const PlanetDistance({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppbar(
        titlee: "Planet distance",
        prefixDisable: false,
      ),
      body: Container(
        padding: EdgeInsets.only(
            left: twentyPixelWidth(context), right: twentyPixelWidth(context)),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/spaces/bg7.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(),
           
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Text("Choose where yo want to fly",style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              fontFamily: "Poppins",
              color: AppColor.whiteColor
            ),),
            verticalSpace(twentyPixelHeight(context)),
            Container(
              padding: EdgeInsets.only(
                left: twentyPixelWidth(context)*.5,
                right: twentyPixelWidth(context)*.5
              ),
              width: double.infinity,
              height: twentyPixelHeight(context)*2,
              decoration: BoxDecoration(
                color: AppColor.whiteColor.withOpacity(.8),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("From",style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                      color: AppColor.blackColor
                    ),),
                    Text("Earth",style: TextStyle(
                       fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                      color: AppColor.blackColor
                    ),),
                    SizedBox(width: twentyPixelWidth(context)*2,),
                  ],
                ),
              ),
            ),
            verticalSpace(twentyPixelHeight(context)*.5),
            Container(
              padding: EdgeInsets.only(
                left: twentyPixelWidth(context)*.5,
                right: twentyPixelWidth(context)*.5
              ),
              width: double.infinity,
              height: twentyPixelHeight(context)*2,
              decoration: BoxDecoration(
                color: AppColor.whiteColor.withOpacity(.8),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("To",style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                      color: AppColor.blackColor
                    ),),
                    Text("Moon",style: TextStyle(
                       fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                      color: AppColor.blackColor
                    ),),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
              ),
            ),
            verticalSpace(twentyPixelHeight(context)),
        
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, EarthToMoonDistance.pageRoute);
              },
              child: CustomCalculateDistanceBtn(
                textt: "Calculate Distance",
              ),
            ),
            verticalSpace(twentyPixelHeight(context)*3),
           
            ],
           ),

            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: twentyPixelHeight(context)*1.5
                ),
                child: CustomCalculateDistanceBtn(textt: "Go to explore")),
            ),
          ],
        ),
      ),
    );
  }
}