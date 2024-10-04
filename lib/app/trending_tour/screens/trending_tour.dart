import 'package:flutter/material.dart';
import 'package:space_app/app/widgets/custom_appbar.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/blank_space.dart';
import 'package:space_app/general/utils/responsive.dart';

class TrendingTour extends StatelessWidget {
  static const pageRoute = "trending-tour";
  const TrendingTour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        titlee: "Trending Tour",
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
              "assets/spaces/bg10.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(twentyPixelHeight(context)),
              Text("Trending tours",style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
                color: AppColor.whiteColor
              ),),
              
              verticalSpace(twentyPixelHeight(context)*.5),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 15,
                  itemBuilder: (context, index) {
                   // return UpcomingTourItem();
                   return Text("Trending tour");
                  }),

                  verticalSpace(twentyPixelHeight(context)*1),
            ],
          ),
        ),
      ),
    );
  }
}