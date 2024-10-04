
import 'package:flutter/material.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/responsive.dart';

class CustomButtom extends StatelessWidget {
  final String textt;
  final String routeNamee;
  const CustomButtom(
      {super.key, required this.textt, required this.routeNamee});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, routeNamee);
      },
      child: Container(
        height: twentyPixelHeight(context) * 2.8,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                      colors: [
                             AppColor.darkBlue,
                            AppColor.blue,
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,),




            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Text(
            textt,
            style: TextStyle(
                fontSize: 20,
                color: AppColor.whiteColor,
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins"),
          ),
        ),
      ),
    );
  }
}
