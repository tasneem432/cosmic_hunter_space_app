import 'package:flutter/material.dart';
import 'package:space_app/app/explore_space/screens/explore_space.dart';
import 'package:space_app/app/explore_space/widgets/custom_calculate_distance_btn.dart';
import 'package:space_app/app/widgets/custom_appbar.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/blank_space.dart';
import 'package:space_app/general/utils/responsive.dart';

class EarthToMoonDistance extends StatelessWidget {
  static const pageRoute = '/earth-to-moon-distance';
  const EarthToMoonDistance({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppbar(
        titlee: "Earth to moon distance",
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
               
            Container(
              width: double.infinity,
              height: twentyPixelHeight(context)*5,
              decoration: BoxDecoration(
                color:AppColor.lightBlue.withOpacity(1),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: AppColor.darkBlue,
                  width: 1,

                )
                
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Distance",style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                    color: AppColor.blackColor
                  ),),
                  verticalSpace(twentyPixelHeight(context)*.5),
                  Text("363,300 kilometers",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins",
                    color: AppColor.blackColor
                  ),)
                ],
              ),
            ),
            ],
           ),

            InkWell(
              onTap: (){
                Navigator.pushNamed(context, ExploreSpace.pageRoute);
              },
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: twentyPixelHeight(context)*1.5
                ),
                child: CustomCalculateDistanceBtn(textt: "Back to Explore")),
            ),
          ],
        ),
      ),
    );
  }
}