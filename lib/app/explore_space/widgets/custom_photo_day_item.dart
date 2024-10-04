import 'package:flutter/material.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/blank_space.dart';
import 'package:space_app/general/utils/responsive.dart';

class CustomPhotoDayItem extends StatelessWidget {
  final String datee;
  final String titlee;
  final String imageUrl;
  final String explainText;
  const CustomPhotoDayItem(
      {super.key,
      required this.datee,
      required this.titlee,
      required this.imageUrl,
      required this.explainText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: twentyPixelHeight(context) * 5.5,
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
            child: SizedBox(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  imageUrl,
                  errorBuilder: (BuildContext context, Object exception,
                      StackTrace? stackTrace) {
                    return Image.asset(
                      'assets/spaces/marse.png', 
                      fit: BoxFit.cover, 
                    );
                  },
                ),
              ),
            ),
          ),
          horizontalSpace(twentyPixelWidth(context) * .5),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Date: ",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        color: AppColor.whiteColor,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Expanded(
                      child: Text(
                        datee,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Poppins",
                          color: AppColor.whiteColor,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Title: ",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        color: AppColor.whiteColor,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        titlee,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Poppins",
                          color: AppColor.whiteColor,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "explanation: ",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        color: AppColor.whiteColor,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        explainText,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Poppins",
                          color: AppColor.whiteColor,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Expanded(child: SizedBox()),
                Row(
                  children: [
                    Container(
                      width: twentyPixelWidth(context) * 4,
                      height: twentyPixelHeight(context) * 1.5,
                      decoration: BoxDecoration(
                          color: AppColor.darkBlue,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          "Full Image",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                              color: AppColor.whiteColor),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
