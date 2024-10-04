
import 'package:flutter/material.dart';
import 'package:space_app/app/auth/screens/reset_password.dart';
import 'package:space_app/app/auth/screens/signup_screen.dart';
import 'package:space_app/app/auth/widgets/custom_or_login_with.dart';
import 'package:space_app/app/home/screens/home_screen.dart';
import 'package:space_app/app/widgets/custom_appbar.dart';
import 'package:space_app/app/widgets/custom_button.dart';
import 'package:space_app/app/widgets/custom_text_heading.dart';
import 'package:space_app/app/widgets/custom_textfield.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/blank_space.dart';
import 'package:space_app/general/utils/responsive.dart';

class LoginScreen extends StatelessWidget {
  static const pageRoute = "/login-screen";
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: CustomAppbar(titlee: "Login", prefixDisable: true,),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/spaces/bg10.jpg",),
            fit: BoxFit.cover,
          ),
          ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: twentyPixelWidth(context),
              right: twentyPixelWidth(context),
              top: twentyPixelHeight(context)*1.75,
              bottom: twentyPixelHeight(context)*1.5,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: twentyPixelWidth(context) * 5,
                    height: twentyPixelHeight(context) * 5,
                  ),
                ),
                verticalSpace(twentyPixelHeight(context) * 2),
                CustomTextHeading(
                  textt: "Email",
                  isRequired: true,
                ),
                CustomTextfield(
                  hintTextt: "example@gmail.com",
                  prefixxIcon: Icons.person_outline,
                ),
                verticalSpace(twentyPixelHeight(context)),
                CustomTextHeading(
                  textt: "Password",
                  isRequired: true,
                ),
                CustomTextfield(
                  hintTextt: "**********",
                  prefixxIcon: Icons.lock_open_outlined,
                ),
                verticalSpace(twentyPixelHeight(context) * .5),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, ResetPassword.pageRoute);
                  },
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            fontFamily: "Poppins",
                            color: AppColor.whiteColor),
                      )),
                ),
                verticalSpace(twentyPixelHeight(context) * 1.5),
                CustomButtom(textt: "Login", routeNamee: HomeScreen.pageRoute,),
                verticalSpace(twentyPixelHeight(context) * 2),
                CustomOrLoginWith(textt: "login",),
                verticalSpace(twentyPixelHeight(context)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/google.png",
                      width: twentyPixelWidth(context) * 2.5,
                    ),
                    Image.asset(
                      "assets/images/facebook.png",
                      width: twentyPixelWidth(context) * 2.5,
                    ),
                    Image.asset(
                      "assets/images/twitter.png",
                      width: twentyPixelWidth(context) * 2.5,
                    ),
                  ],
                ),
                verticalSpace(twentyPixelHeight(context)*3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?  ",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          fontFamily: "Poppins",
                          color: AppColor.whiteColor),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, SignupScreen.pageRoute);
                      },
                      child: Text(
                        "Signup",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            fontFamily: "Poppins",
                            color: AppColor.whiteColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
