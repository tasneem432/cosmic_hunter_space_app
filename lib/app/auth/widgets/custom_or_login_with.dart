
import 'package:flutter/material.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/blank_space.dart';
import 'package:space_app/general/utils/responsive.dart';

class CustomOrLoginWith extends StatelessWidget {
  final String textt;
  const CustomOrLoginWith({super.key, required this.textt});

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  horizontalSpace(twentyPixelWidth(context)),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: AppColor.whiteColor,
                      endIndent:
                          8.0, // Adds space between the line and the text
                    ),
                  ),
                  Text(
                    " Or $textt with  ",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                      color: AppColor.whiteColor,
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: AppColor.whiteColor,
                      endIndent:
                          8.0, // Adds space between the line and the text
                    ),
                  ),
                  horizontalSpace(twentyPixelWidth(context)),
                ],
              );
  }
}