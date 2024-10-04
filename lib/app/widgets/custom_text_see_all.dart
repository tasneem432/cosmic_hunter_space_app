
import 'package:flutter/material.dart';
import 'package:space_app/general/config/colors.dart';

class CustomTextSeeAll extends StatelessWidget {
  final String textt;
  final bool? isRequired;
  final String newPageRoute;
  final bool? isNewPage;

  const CustomTextSeeAll(
      {super.key, required this.textt, this.isRequired, required this.newPageRoute,this.isNewPage});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textt,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColor.blackColor,
              fontFamily: "Poppins"),
        ),
        GestureDetector(
          onTap: () {
            isNewPage==true?Navigator.pushNamed(context, newPageRoute):debugPrint("");
            
          },
          child: Text(
            isRequired == true ? "see all" : "",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColor.blackColor.withOpacity(.6),
                fontFamily: "Poppins"),
          ),
        ),
      ],
    );
  }
}
