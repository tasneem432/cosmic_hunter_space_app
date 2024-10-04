
import 'package:flutter/material.dart';
import 'package:space_app/app/explore_space/screens/explore_space.dart';
import 'package:space_app/app/weight_result/widgets/custom_result_bmi.dart';
import 'package:space_app/app/weight_result/widgets/custom_result_text.dart';
import 'package:space_app/app/widgets/custom_appbar.dart';
import 'package:space_app/app/widgets/custom_button.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/blank_space.dart';
import 'package:space_app/general/utils/responsive.dart';

class WeightResultScreen extends StatelessWidget {
  // final HomeController controller = Get.find<HomeController>();
  // final AdsController adsController = Get.put(AdsController());

  static const pageRoute = "/weight-result-screen";

  const WeightResultScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        titlee: "Result",
        prefixDisable: false,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/spaces/bg10.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.only(
          left: twentyPixelWidth(context),
          right: twentyPixelWidth(context),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpace(twentyPixelHeight(context)),
            Container(
              width: twentyPixelWidth(context) * 11,
              height: twentyPixelWidth(context) * 11,
              decoration: BoxDecoration(
                  color: AppColor.darkBlue,
                  borderRadius: BorderRadius.circular(300),
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.darkBlue.withOpacity(.8),
                      spreadRadius: 5,
                      blurRadius: 23, // changes position of shadow
                    ),
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    textScaler:
                        TextScaler.linear(ScaleSize.textScaleFactor(context)),
                    "Moon",
                    style: const TextStyle(
                      fontSize: 20,
                      color: AppColor.whiteColor,
                      fontWeight: FontWeight.w300,
                      fontFamily: "Poppins",
                    ),
                  ),
                  Text(
                  //  controller.bmi.toStringAsFixed(1),
                  "8.16",
                    textScaler:
                        TextScaler.linear(ScaleSize.textScaleFactor(context)),
                    style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        color: AppColor.whiteColor,
                        fontFamily: "PoppinsBold"),
                  ),
                  Text(
                   // controller.getBmiCategory(),
                   "KG",
                    textScaler:
                        TextScaler.linear(ScaleSize.textScaleFactor(context)),
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        //color: controller.getBmiColor(),
                        color: AppColor.whiteColor,
                        fontFamily: "Poppins"),
                  ),
                ],
              ),
            ),
            verticalSpace(twentyPixelHeight(context)),
            Container(
              decoration: BoxDecoration(
                  color: AppColor.lightBlue.withOpacity(.1),
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: EdgeInsets.only(
                  left: twentyPixelWidth(context) * .5,
                  right: twentyPixelWidth(context) * .5,
                  top: twentyPixelHeight(context) * .8,
                  bottom: twentyPixelHeight(context) * .8,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomResultText(
                      leftTextt:
                          //"You need to ${controller.bmi < 18.5 ? "gain" : "loose"}",
                          "Your wdight in Earth:",
                      rightTextt:
                         // "${controller.looseGain.toStringAsFixed(1)} kg",
                         "50 kg",
                      leftBold: false,
                      rightBold: true,
                    ),
                    verticalSpace(twentyPixelHeight(context) * .5),
                    CustomResultText(
                      leftTextt: "Your weight in Moon",
                      rightTextt:
                        "8.16 KG",
                        //  "${controller.idealLowWeight.toStringAsFixed(1)}-${controller.idealHighWeight.toStringAsFixed(1)} kg",
                      leftBold: false,
                      rightBold: true,
                    ),
                  ],
                ),
              ),
            ),
            verticalSpace(twentyPixelHeight(context)),
            const CustomResultBmi(),
            const Expanded(child: SizedBox()),
           
            verticalSpace(twentyPixelHeight(context) * .5),
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: CustomButtom(textt: "Explore another", routeNamee: ExploreSpace.pageRoute)),
            verticalSpace(twentyPixelHeight(context) * 1.5)
          ],
        ),
      ),
    );
  }
}
