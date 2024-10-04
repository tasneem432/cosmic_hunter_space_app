import 'package:flutter/material.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/responsive.dart';

class CustomExploreSpaceItem extends StatelessWidget {
  final String textt;
  final String imageUrl;
  final String pageUrl;
  
  const CustomExploreSpaceItem({super.key, required this.textt, required this.imageUrl, required this.pageUrl});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
            Navigator.pushNamed(context, pageUrl);
          },
      child: SizedBox(
        width: twentyPixelWidth(context) * 7.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: twentyPixelWidth(context) * 7.5,
              height: twentyPixelHeight(context) * 7.5,
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
              child: Center(
                child: Image.asset(
                  imageUrl,
                  width: twentyPixelWidth(context) * 5.5,
                ),
              ),
            ),
            Text(
              textt,
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins",
                  color: AppColor.whiteColor),
            )
          ],
        ),
      ),
    );
  }
}
