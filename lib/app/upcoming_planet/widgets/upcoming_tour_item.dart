import 'package:flutter/material.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/blank_space.dart';
import 'package:space_app/general/utils/responsive.dart';

class UpcomingTourItem extends StatelessWidget {
  final String destrinationn;
  final String timee;
  final String budgets;
  final String pageRoutee;
  final Map argumentss;
  const UpcomingTourItem({super.key, required this.destrinationn, required this.timee, required this.budgets, required this.pageRoutee, required this.argumentss});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: twentyPixelHeight(context) * 6,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.only(bottom: twentyPixelHeight(context) * .5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            AppColor.blue.withOpacity(.5),
            AppColor.whiteColor.withOpacity(.5)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/spaces/marse.png")),
          ),
          horizontalSpace(twentyPixelWidth(context) * .5),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                destrinationn,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins",
                  color: AppColor.whiteColor,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Time: ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                      color: AppColor.whiteColor,
                    ),
                    
                  ),

                  Text(
                    timee,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                      color: AppColor.whiteColor,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Budget: ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                      color: AppColor.whiteColor,
                    ),
                    
                  ),

                  Text(
                    budgets,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                      color: AppColor.whiteColor,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    
                  ),
                ],

                
              ),
               InkWell(
                onTap: (){
                  Navigator.pushNamed(context, pageRoutee,arguments: argumentss);
                },
                 child: Container(
                  width: twentyPixelWidth(context) * 3.5,
                  height: twentyPixelHeight(context) * 1.5,
                  decoration: BoxDecoration(
                      color: AppColor.darkBlue,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      "Details",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins",
                          color: AppColor.whiteColor),
                    ),
                  ),
                               ),
               ),

            ],
          ),
          
          
        ],
      ),
    );
  }
}
