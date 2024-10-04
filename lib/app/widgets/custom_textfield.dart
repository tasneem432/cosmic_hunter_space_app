
import 'package:flutter/material.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/responsive.dart';

class CustomTextfield extends StatelessWidget {
  final String hintTextt;
  final IconData? prefixxIcon;

  const CustomTextfield({super.key, required this.hintTextt, this.prefixxIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: twentyPixelHeight(context) * .25,
      ),
      child: SizedBox(
        height: twentyPixelHeight(context) * 2.3,
        child: TextField(
          decoration: InputDecoration(
            hintText: hintTextt,
            hintStyle: TextStyle(color: AppColor.whiteColor.withOpacity(.8)),
            prefixIcon: Icon(
              prefixxIcon,
              color: AppColor.whiteColor.withOpacity(.5),
            ),
            filled: true,
            fillColor: AppColor.whiteColor.withOpacity(.2),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
