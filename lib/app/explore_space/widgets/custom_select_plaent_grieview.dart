import 'package:flutter/material.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/blank_space.dart';
import 'package:space_app/general/utils/responsive.dart';

class CustomSelectPlaentGrieview extends StatefulWidget {
  const CustomSelectPlaentGrieview({super.key});

  @override
  State<CustomSelectPlaentGrieview> createState() =>
      _CustomSelectPlaentGrieviewState();
}

class _CustomSelectPlaentGrieviewState
    extends State<CustomSelectPlaentGrieview> {
  int selectedIndex = 0;
 var bloodList = [
    "Moon",
    "Marse",
    "Moon",
    "Sun",
    "Jupiter",
    "Venus",
    "Saturn",
    "AB-",
    "Urannus",
    "Urannus",
    "Urannus",
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
             
              childAspectRatio: 0.8 / 1,
              crossAxisSpacing: twentyPixelWidth(context) * .5,
              mainAxisSpacing: twentyPixelHeight(context) * .5),
          itemCount: 10,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                  width: twentyPixelWidth(context) * 3.5,
                  height: twentyPixelHeight(context) * 4,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      colors: [
                        selectedIndex == index
                            ? AppColor.darkBlue.withOpacity(.8)
                            : AppColor.blue.withOpacity(.8),
                        selectedIndex == index
                            ? AppColor.darkBlueTwo.withOpacity(.5)
                            : AppColor.whiteColor.withOpacity(.5),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                   
                  ),
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/spaces/marse.png",
                            width: twentyPixelWidth(context) * 2.5,
                            height: twentyPixelHeight(context) * 2.5,
                          )),

                          verticalSpace(twentyPixelHeight(context)*.5),
                          Text(bloodList[index],style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins",
                            color: AppColor.whiteColor
                          ),),
                    ],
                  )

                      //  Text(
                      //   bloodList[index],
                      //   style: TextStyle(
                      //     color: selectedIndex == index
                      //         ? AppColor.whiteColor
                      //         : AppColor.darkBlue,
                      //     fontSize: 20,
                      //     fontFamily: 'Poppins',
                      //     fontWeight: FontWeight.w700,
                      //   ),
                      //   textScaler:
                      //       TextScaler.linear(ScaleSize.textScaleFactor(context)),
                      // ),

                      )),
            );
          }),
    );
  }
}
