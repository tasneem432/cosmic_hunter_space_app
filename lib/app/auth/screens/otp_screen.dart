
import 'package:flutter/material.dart';
import 'package:space_app/app/auth/screens/new_password.dart';
import 'package:space_app/app/widgets/custom_appbar.dart';
import 'package:space_app/app/widgets/custom_button.dart';
import 'package:space_app/app/widgets/custom_textfield.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/blank_space.dart';
import 'package:space_app/general/utils/responsive.dart';

class OtpScreen extends StatelessWidget {
  static const pageRoute = "/otp-screen";
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(titlee: "OTP"),
      body: Container(
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
              "The verification code has been sent \nto example@gmail.com",
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
              hintTextt: "Enter 6 digit code",
              prefixxIcon: Icons.person_2_outlined,
            ),
            verticalSpace(twentyPixelHeight(context)),
            CustomButtom(textt: "Verify", routeNamee: NewPassword.pageRoute),

          ],
        ),
      ),
    );
  }
}