import 'package:flutter/material.dart';
import 'package:space_app/app/explore_space/widgets/custom_select_plaent_grieview.dart';
import 'package:space_app/app/explore_space/widgets/custom_weight_container_row.dart';
import 'package:space_app/app/weight_result/screens/weight_result_screen.dart';
import 'package:space_app/app/widgets/custom_appbar.dart';
import 'package:space_app/app/widgets/custom_button.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/blank_space.dart';
import 'package:space_app/general/utils/responsive.dart';

class SpaceWeight extends StatelessWidget {
  static const pageRoute = '/space-weight';
  const SpaceWeight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        titlee: "Space weight calculation",
        prefixDisable: false,
      ),
      body: Container(
        padding: EdgeInsets.only(
            left: twentyPixelWidth(context), right: twentyPixelWidth(context)),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(twentyPixelHeight(context) * 2),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: twentyTwoPixelWidth(context) * .5,
                vertical: twentyPixelHeight(context) * .5,
              ),
              decoration: BoxDecoration(
                  color: AppColor.lightBlue.withOpacity(.7),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               
                  CustomContainerRow(
                      fieldName: "Weight",
                      fieldType: "kg",
                      fieldFirstParameter:
                          //"${(controller.currentWeight.value).toInt()} KG",
                          "50KG"),
                  Slider(
                    // value: controller.currentWeight.value,
                    value: 100,
                    min: 25,
                    max: 200,
                    // label: controller.currentWeight.value.toStringAsFixed(1),
                    label: "40",
                    onChanged: (double value) {
                      // controller.currentWeight(value);
                    },
                    activeColor: AppColor.darkBlue,
                  )
                ],
              ),
            ),
            verticalSpace(twentyPixelHeight(context) * 2),
            Text("Choose Planet",style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins",
              color: AppColor.whiteColor,
            ),),
        
            CustomSelectPlaentGrieview(),
            Expanded(child: SizedBox()),
            CustomButtom(textt: "Calculate", routeNamee: WeightResultScreen.pageRoute),
            verticalSpace(twentyPixelHeight(context)),
          ],
        ),
      ),
    );
  }
}
