
import 'package:flutter/material.dart';
import 'package:space_app/app/auth/screens/password_change_successful.dart';
import 'package:space_app/app/widgets/custom_appbar.dart';
import 'package:space_app/app/widgets/custom_button.dart';
import 'package:space_app/app/widgets/custom_text_heading.dart';
import 'package:space_app/app/widgets/custom_textfield.dart';
import 'package:space_app/general/utils/blank_space.dart';
import 'package:space_app/general/utils/responsive.dart';

class NewPassword extends StatelessWidget {
  static const pageRoute = "/new-password";
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(titlee: "Enter new password"),
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
            
            verticalSpace(twentyPixelHeight(context)),
            CustomTextHeading(textt: "New password"),
            verticalSpace(twentyPixelHeight(context)*.25),
            CustomTextfield(
              hintTextt: "********",
              prefixxIcon: Icons.person_2_outlined,
            ),
            verticalSpace(twentyPixelHeight(context)),
            CustomTextHeading(textt: "Confirm password"),
            verticalSpace(twentyPixelHeight(context)*.25),
            CustomTextfield(
              hintTextt: "********",
              prefixxIcon: Icons.person_2_outlined,
            ),
            verticalSpace(twentyPixelHeight(context)*1.5),
            CustomButtom(textt: "Set Password", routeNamee: PasswordChangeSuccessful.pageRoute),

          ],
        ),
      ),
    );
  }
}