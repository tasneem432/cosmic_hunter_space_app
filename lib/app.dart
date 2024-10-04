
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:space_app/app/auth/screens/login_screen.dart';
import 'package:space_app/app/auth/screens/new_password.dart';
import 'package:space_app/app/auth/screens/otp_screen.dart';
import 'package:space_app/app/auth/screens/password_change_successful.dart';
import 'package:space_app/app/auth/screens/reset_password.dart';
import 'package:space_app/app/auth/screens/signup_screen.dart';
import 'package:space_app/app/book_tour/screens/book_tour.dart';
import 'package:space_app/app/explore_space/screens/earth_to_moon_distance.dart';
import 'package:space_app/app/explore_space/screens/explore_space.dart';
import 'package:space_app/app/explore_space/screens/photo_gallery.dart';
import 'package:space_app/app/explore_space/screens/photo_of_the_day.dart';
import 'package:space_app/app/explore_space/screens/planet_distance.dart';
import 'package:space_app/app/explore_space/screens/space_weight.dart';
import 'package:space_app/app/home/screens/home_screen.dart';
import 'package:space_app/app/search_tour/screens/search_tour.dart';
import 'package:space_app/app/splash/screens/splash_screen.dart';
import 'package:space_app/app/trending_tour/screens/trending_tour.dart';
import 'package:space_app/app/upcoming_planet/screens/buy_ticket_screen.dart';
import 'package:space_app/app/upcoming_planet/screens/upcoming_planet.dart';
import 'package:space_app/app/upcoming_planet/screens/upcoming_planet_details.dart';
import 'package:space_app/app/weight_result/screens/weight_result_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        useMaterial3: true
      ),
      debugShowCheckedModeBanner: false,
     initialRoute: SplashScreen.pageRoute,
      routes: {
        SplashScreen.pageRoute: (context) => SplashScreen(),
        LoginScreen.pageRoute: (context) =>LoginScreen(),
        SignupScreen.pageRoute: (context)=> SignupScreen(),
        NewPassword.pageRoute: (context)=> NewPassword(),
        OtpScreen.pageRoute: (context)=> OtpScreen(),
        ResetPassword.pageRoute: (context)=>ResetPassword(),
        PasswordChangeSuccessful.pageRoute: (context)=> PasswordChangeSuccessful(),

        HomeScreen.pageRoute: (context) => HomeScreen(),
        ExploreSpace.pageRoute: (context)=> ExploreSpace(),
        UpcomingPlanet.pageRoute: (context)=> UpcomingPlanet(),
        BookTour.pageRoute: (context)=> BookTour(),

        TrendingTour.pageRoute: (context)=> TrendingTour(),

        PhotoGallery.pageRoute: (context)=> PhotoGallery(),
        PhotoOfTheDay.pageRoute: (context)=> PhotoOfTheDay(),
        SpaceWeight.pageRoute: (context)=> SpaceWeight(),
        PlanetDistance.pageRoute: (context)=> PlanetDistance(),

        WeightResultScreen.pageRoute: (context) => WeightResultScreen(),
        SearchTour.pageRoute: (context)=> SearchTour(),
        UpcomingPlanetDetails.pageRoute: (context)=> UpcomingPlanetDetails(),
        BuyTicketScreen.pageRoute: (context) => BuyTicketScreen(),
        EarthToMoonDistance.pageRoute: (context)=> EarthToMoonDistance(),
        
        



      },
    );
  }
}

