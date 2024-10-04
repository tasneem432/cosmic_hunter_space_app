

import 'package:flutter/material.dart';
import 'package:space_app/general/config/colors.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String titlee;
  final bool? prefixDisable;
  final String? customRoute;
  
  const CustomAppbar({super.key, required this.titlee, this.prefixDisable, this.customRoute});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF03045E), Color(0xFF0077B6)], // Left to right gradient colors
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: AppBar(
        title: Text(
          titlee,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            fontFamily: "Poppins",
            color: Colors.white,
          ),
        ),
        centerTitle: true,
         leading:  prefixDisable!=true? InkWell(
          onTap: () {
            customRoute == null?
            Navigator.pop(context) : Navigator.pushNamed(context, customRoute!);
          },
          child: Icon(Icons.arrow_back, color: AppColor.whiteColor,)):SizedBox(),
        backgroundColor: Colors.transparent, // Make AppBar transparent to show the gradient
        elevation: 0, // Remove shadow if not needed
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}




