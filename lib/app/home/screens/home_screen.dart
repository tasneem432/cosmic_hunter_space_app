import 'package:flutter/material.dart';
import 'package:space_app/app/book_tour/screens/book_tour.dart';
import 'package:space_app/app/explore_space/screens/explore_space.dart';
import 'package:space_app/app/explore_space/screens/photo_of_the_day.dart';
import 'package:space_app/app/home/widgets/custom_home_box.dart';
import 'package:space_app/app/upcoming_planet/screens/upcoming_planet.dart';
import 'package:space_app/app/widgets/custom_appbar.dart';
import 'package:space_app/app/widgets/custom_best_space_photo_box.dart';
import 'package:space_app/app/widgets/custom_home_news_box.dart';
import 'package:space_app/app/widgets/custom_home_text.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/blank_space.dart';
import 'package:space_app/general/utils/responsive.dart';

class HomeScreen extends StatelessWidget {
  static const pageRoute = "home-screen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        titlee: "Home",
        prefixDisable: true,
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
              Padding(
                padding: EdgeInsets.only(right: twentyPixelWidth(context)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomHomeBox(
                        imageUrl: "assets/spaces/home2.png",
                        textt: "Book a\nTour",
                        bgColor1: AppColor.darkBlue,
                        bgColor2: AppColor.darkBlueTwo,
                        pageUrl: BookTour.pageRoute,
                        ),
                    CustomHomeBox(
                        imageUrl: "assets/spaces/home1.png",
                        textt: "Upcoming\nPlanet",
                        bgColor1: AppColor.blue.withOpacity(.5),
                        bgColor2: AppColor.whiteColor.withOpacity(.5),
                        pageUrl: UpcomingPlanet.pageRoute,
                        ),
                  ],
                ),
              ),
              verticalSpace(twentyPixelHeight(context)),
              Center(
                  child: CustomHomeBox(
                      imageUrl: "assets/spaces/home3.png",
                      textt: "Explore\nSpace",
                      bgColor1: AppColor.blue.withOpacity(.5),
                      bgColor2: AppColor.whiteColor.withOpacity(.5),
                      pageUrl: ExploreSpace.pageRoute,
                      ),
                      
                      ),
              verticalSpace(twentyPixelHeight(context) * 2),
              Padding(
                padding: EdgeInsets.only(right: twentyPixelWidth(context)),
                child: CustomHomeText(
                  leftText: 'Hot news',
                  seeAllUrl: "",
                ),
              ),
              verticalSpace(twentyPixelHeight(context)),
              SizedBox(
                height: twentyPixelHeight(context)*9.5,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return CustomHomeNewsBox();
                  },
                ),
              ),

              verticalSpace(twentyPixelHeight(context)),
              Padding(
                padding: EdgeInsets.only(right: twentyPixelWidth(context)),
                child: CustomHomeText(
                  leftText: 'Best space photos',
                  seeAllUrl: PhotoOfTheDay.pageRoute,
                ),
              ),
              verticalSpace(twentyPixelHeight(context)*.5),
              SizedBox(
                height: twentyPixelHeight(context)*6,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return CustomBestSpacePhotoBox();
                  },
                ),
              ),

              verticalSpace(twentyPixelHeight(context)*1.5)
            ],
          ),
        ),
      ),
    );
  }
}
