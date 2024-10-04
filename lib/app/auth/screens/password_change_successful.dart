
import 'package:flutter/material.dart';
import 'package:space_app/app/home/screens/home_screen.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/blank_space.dart';
import 'package:space_app/general/utils/responsive.dart';

class PasswordChangeSuccessful extends StatefulWidget {
  static const pageRoute= "/password-change-successful";
  const PasswordChangeSuccessful({super.key});

  

  @override
  State<PasswordChangeSuccessful> createState() => _PasswordChangeSuccessfulState();

  
}

class _PasswordChangeSuccessfulState extends State<PasswordChangeSuccessful> {

    @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>  HomeScreen(),
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
              image: AssetImage("assets/spaces/bg10.jpg",),
            fit: BoxFit.cover,
          ),
          ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/success.png",
                width: twentyPixelWidth(context)* 9,
          
              ),
              verticalSpace(twentyPixelHeight(context)),
              Text("New password set\n successfully",style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
                color: AppColor.whiteColor,
              ),textAlign: TextAlign.center,),
            ],
          ),
        ),
      ),
    );
  }
}