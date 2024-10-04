import 'package:flutter/material.dart';
import 'package:space_app/app/book_tour/widgets/custom_trending_tour_box.dart';
import 'package:space_app/app/explore_space/screens/photo_gallery.dart';
import 'package:space_app/app/explore_space/widgets/custom_calculate_distance_btn.dart';
import 'package:space_app/app/trending_tour/screens/trending_tour.dart';
import 'package:space_app/app/upcoming_planet/screens/upcoming_planet.dart';
import 'package:space_app/app/widgets/custom_appbar.dart';
import 'package:space_app/app/widgets/custom_home_text.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/blank_space.dart';
import 'package:space_app/general/utils/responsive.dart';

class BookTour extends StatelessWidget {
  static const pageRoute = "/book-tour";
  const BookTour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        titlee: "Book a tour",
        prefixDisable: false,
      ),
      body: Container(
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
        padding: EdgeInsets.only(
          left: twelvePixelWidth(context),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(twentyPixelHeight(context)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/spaces/picc.png",
                    width: 40,
                    height: 50,
                  ),
                  horizontalSpace(twentyPixelWidth(context)),
                  Text(
                    "Hi! Tasneem",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        color: AppColor.whiteColor),
                  )
                ],
              ),
              verticalSpace(twentyPixelHeight(context)),
              verticalSpace(twentyPixelHeight(context)),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Choose where yo want to fly",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Poppins",
                        color: AppColor.whiteColor),
                  ),
                  verticalSpace(twentyPixelHeight(context)),
                  Padding(
                    padding: EdgeInsets.only(
                      right: twelvePixelWidth(context),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(
                          left: twentyPixelWidth(context) * .5,
                          right: twentyPixelWidth(context) * .5),
                      width: double.infinity,
                      height: twentyPixelHeight(context) * 2,
                      decoration: BoxDecoration(
                        color: AppColor.whiteColor.withOpacity(.8),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "From",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Poppins",
                                  color: AppColor.blackColor),
                            ),
                            Text(
                              "Earth",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Poppins",
                                  color: AppColor.blackColor),
                            ),
                            SizedBox(
                              width: twentyPixelWidth(context) * 2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  verticalSpace(twentyPixelHeight(context) * .5),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, UpcomingPlanet.pageRoute);
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: twelvePixelWidth(context),
                      ),
                      child: CustomCalculateDistanceBtn(
                        textt: "Search tours",
                      ),
                    ),
                  ),
                  verticalSpace(twentyPixelHeight(context) * 3),
                ],
              ),
              //Trending tour part starts here
              verticalSpace(twentyPixelHeight(context)),
              Padding(
                padding: EdgeInsets.only(right: twentyPixelWidth(context)),
                child: CustomHomeText(
                  leftText: 'Trending',
                  seeAllUrl: TrendingTour.pageRoute,
                ),
              ),
              verticalSpace(twentyPixelHeight(context) * .5),
              SizedBox(
                height: twentyPixelHeight(context) * 6,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return CustomTrendingTourBox();
                  },
                ),
              ),
              verticalSpace(twentyPixelHeight(context) * 1.5),

            //Upcoming tour part starts here
            
              verticalSpace(twentyPixelHeight(context)),
              Padding(
                padding: EdgeInsets.only(right: twentyPixelWidth(context)),
                child: CustomHomeText(
                  leftText: 'Upcoming',
                  seeAllUrl: UpcomingPlanet.pageRoute,
                ),
              ),
              verticalSpace(twentyPixelHeight(context) * .5),
              SizedBox(
                height: twentyPixelHeight(context) * 6,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return CustomTrendingTourBox();
                  },
                ),
              ),
              verticalSpace(twentyPixelHeight(context) * 1.5),

              //Explore tour part starts here
              
              verticalSpace(twentyPixelHeight(context)),
              Padding(
                padding: EdgeInsets.only(right: twentyPixelWidth(context)),
                child: CustomHomeText(
                  leftText: 'Explore',
                  seeAllUrl: PhotoGallery.pageRoute,
                ),
              ),
              verticalSpace(twentyPixelHeight(context) * .5),
              SizedBox(
                height: twentyPixelHeight(context) * 6,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return CustomTrendingTourBox();
                  },
                ),
              ),
              verticalSpace(twentyPixelHeight(context) * 1.5)
            ],
          ),
        ),
      ),
    );
  }
}
