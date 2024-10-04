
import 'package:flutter/material.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/responsive.dart';

class CustomPopularFilterBox extends StatefulWidget {
  const CustomPopularFilterBox({super.key});

  @override
  State<CustomPopularFilterBox> createState() => _CustomPopularFilterBoxState();
}

class _CustomPopularFilterBoxState extends State<CustomPopularFilterBox> {
  int selectedIndex = 0;
  var bloodList = [
    "All",
    "Marse",
    "Moon",
    "Sun",
    "Jupiter",
    "Venus",
    "Saturn",
    "AB-",
    "Urannus",
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: twentyPixelHeight(context) * 1.5,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          //shrinkWrap: true,
          itemCount: bloodList.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Center(
                child: Container(
                  padding: EdgeInsets.only(left: twentyPixelWidth(context)*.25,
                    right: twentyPixelWidth(context)*.25
                  ),
                    margin:
                        EdgeInsets.only(right: twentyPixelWidth(context) * .5),
                    
                    height: twentyPixelWidth(context),
                    decoration: ShapeDecoration(
                      color: selectedIndex == index
                          ? AppColor.darkBlue
                          : AppColor.whiteColor,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 1, color: AppColor.darkBlue),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      shadows:const [
                         BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 6,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        bloodList[index],
                        style: TextStyle(
                          color: selectedIndex == index
                              ? AppColor.whiteColor
                              : AppColor.darkBlue,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                        textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context)),
                      ),
                    )),
              ),
            );
          }),
    );
  }
}
