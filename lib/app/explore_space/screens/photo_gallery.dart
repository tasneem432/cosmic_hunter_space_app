import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:space_app/app/explore_space/controllers/explore_space_controller.dart';
import 'package:space_app/app/explore_space/widgets/custom_calculate_distance_btn.dart';
import 'package:space_app/app/explore_space/widgets/custom_photo_day_item.dart';
import 'package:space_app/app/widgets/custom_appbar.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/blank_space.dart';
import 'package:space_app/general/utils/responsive.dart';

class PhotoGallery extends StatelessWidget {
  static const pageRoute = "/photo-gallary";
  PhotoGallery({super.key});
  final controller = Get.put(PhotoDayController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        titlee: "Photo of the day",
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
              "assets/spaces/bg7.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(twentyPixelHeight(context)),
              Obx((){
                return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Start Date:",style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins",
                    color: AppColor.whiteColor
                  ),),
                  horizontalSpace(twentyPixelWidth(context)*.5),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(
                        left: twentyPixelWidth(context)*.5,
                        right: twentyPixelWidth(context)*.5,
                      ),
                      height: twentyPixelHeight(context)*2,
                      decoration: BoxDecoration(
                        color: AppColor.whiteColor.withOpacity(.5),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(controller.startDate.value,style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                              color: AppColor.whiteColor,
                    
                            ),),
                            InkWell(
                              onTap: (){
                                _selectDate(context, isStartDate: true);                              },
                              child: Icon(Icons.calendar_month,color: AppColor.whiteColor,))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
              }),
              verticalSpace(twentyPixelHeight(context)*.5),
              InkWell(
                onTap: (){
                  controller.fetchPhotoDays(
                      startDate: controller.startDate.toString());
                },
                child: CustomCalculateDistanceBtn(textt: "Search")),
             
              verticalSpace(twentyPixelHeight(context)),
              Obx(() {
                if (controller.isLoading.value) {
                  return Center(child: CircularProgressIndicator());
                } else if (controller.errorMessage.isNotEmpty) {
                  return Text(
                    "No photos found",
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColor.whiteColor,
                    ),
                  );
                } else {
                  return ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount:
                        controller.photoDays.length, // Length of the list
                    itemBuilder: (context, index) {
                      final photo =
                          controller.photoDays[index]; // Access each photo
                      return CustomPhotoDayItem(
                        datee: photo.date.toString().substring(1, 10),
                        explainText: photo.explanation!,
                        imageUrl: photo.url!,
                        titlee: photo.title!,
                      );
                    },
                  );
                }
              }),
              verticalSpace(twentyPixelHeight(context) * 1),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context,
      {required bool isStartDate}) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1995, 6, 16), 
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      if (isStartDate) {
        controller.startStartDate(picked);
      } 
    }
  }
}
