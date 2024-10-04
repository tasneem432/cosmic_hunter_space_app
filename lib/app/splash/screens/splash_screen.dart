import 'package:flutter/material.dart';
import 'package:space_app/app/auth/screens/login_screen.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/blank_space.dart';
import 'package:space_app/general/utils/responsive.dart';

class SplashScreen extends StatefulWidget {
  static const pageRoute = "/splash-screen";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/spaces/bg7.jpg",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/images/logo.png",
              width: twentyPixelWidth(context) * 7,
              height: twentyPixelHeight(context) * 7,
            ),
          ),
          verticalSpace(twentyPixelHeight(context)),
          Text(
            "Cosmic Hunter\nApp",
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w900,
                fontFamily: "Poppins",
                color: AppColor.whiteColor),
            textAlign: TextAlign.center,
          )
        ],
      ),
    ));
  }
}
