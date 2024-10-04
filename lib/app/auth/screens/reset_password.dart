
import 'package:flutter/material.dart';
import 'package:space_app/app/auth/screens/otp_screen.dart';
import 'package:space_app/app/widgets/custom_appbar.dart';
import 'package:space_app/app/widgets/custom_button.dart';
import 'package:space_app/app/widgets/custom_textfield.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/blank_space.dart';
import 'package:space_app/general/utils/responsive.dart';

class ResetPassword extends StatelessWidget {
  static const pageRoute = "/reset-password";
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(titlee: "Reset Password"),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/spaces/bg10.jpg",),
            fit: BoxFit.cover,
          ),
          ),
        padding: EdgeInsets.only(
          left: twentyPixelWidth(context),
          right: twentyPixelWidth(context),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: twentyPixelWidth(context)
              ),
              child: Image.asset(
                "assets/images/logo.png",
                width: twentyPixelWidth(context) * 5,
              ),
            ),
            verticalSpace(twentyPixelHeight(context)*.25),
            verticalSpace(twentyPixelHeight(context) * 2),
            Text(
              "Please enter your email address\nto reset your password",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: AppColor.whiteColor.withOpacity(.6),
                fontFamily: "Poppins",
              ),
              textAlign: TextAlign.center,
            ),
            verticalSpace(twentyPixelHeight(context)),
            CustomTextfield(
              hintTextt: "example@gmail.com",
              prefixxIcon: Icons.person_2_outlined,
            ),
            verticalSpace(twentyPixelHeight(context)),
            CustomButtom(textt: "Reset Password", routeNamee: OtpScreen.pageRoute),
        
          ],
        ),
      ),
    );
  }
}
