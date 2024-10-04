import 'package:flutter/material.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/blank_space.dart';
import 'package:space_app/general/utils/responsive.dart';

class CustomHomeBox extends StatelessWidget {
  final String imageUrl;
  final String textt;
  final Color bgColor1;
  final Color bgColor2;
  final String pageUrl;
  const CustomHomeBox({super.key, required this.imageUrl, required this.textt, required this.bgColor1, required this.bgColor2, required this.pageUrl});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, pageUrl);
      },
      child: Container(
        width: twentyPixelWidth(context) * 6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [bgColor1, bgColor2],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(imageUrl,
                  width: twentyPixelWidth(context) * 8.5),
            ),
            Center(
              child: Text(
                textt,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins",
                    color: AppColor.whiteColor),
              ),
            ),
            verticalSpace(twentyPixelHeight(context) * .5),
          ],
        ),
      ),
    );
  }
}
