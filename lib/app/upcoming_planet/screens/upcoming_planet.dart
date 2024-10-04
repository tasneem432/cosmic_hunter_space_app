import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:space_app/app/upcoming_planet/controllers/upcoming_tour_controller.dart';
import 'package:space_app/app/upcoming_planet/screens/upcoming_planet_details.dart';
import 'package:space_app/app/upcoming_planet/widgets/upcoming_tour_item.dart';
import 'package:space_app/app/widgets/custom_appbar.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/blank_space.dart';
import 'package:space_app/general/utils/responsive.dart';

class UpcomingPlanet extends StatelessWidget {
  static const pageRoute = "/upcoming-planet";
  final TourController tourController = Get.put(TourController());
   UpcomingPlanet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        titlee: "Upcoming tour",
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
              Text("Planets coming soon",style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
                color: AppColor.whiteColor
              ),),
              
              verticalSpace(twentyPixelHeight(context)*.5),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: tourController.tours.length,
                  itemBuilder: (context, index) {
                    final tour = tourController.tours[index];
                    return UpcomingTourItem(
                      budgets: tour.budget.familyPack.toString(),
                      destrinationn: tour.destination,
                      timee: tour.travelTime,
                      pageRoutee: UpcomingPlanetDetails.pageRoute,
                      argumentss: {
                        "index": index,
                      },
                    );
                  }),

                  verticalSpace(twentyPixelHeight(context)*1),
            ],
          ),
        ),
      ),
    );
  }
}