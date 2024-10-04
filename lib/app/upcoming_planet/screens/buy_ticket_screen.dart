import 'package:flutter/material.dart';
import 'package:space_app/app/home/screens/home_screen.dart';
import 'package:space_app/app/widgets/custom_appbar.dart';
import 'package:space_app/app/widgets/custom_button.dart';
import 'package:space_app/general/utils/blank_space.dart';
import 'package:space_app/general/utils/responsive.dart';

class BuyTicketScreen extends StatelessWidget {
  static const pageRoute = "buy-ticket";
  const BuyTicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(titlee: "Buy Ticket"),
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: SizedBox()),
            Image.asset("assets/images/success.png",width: twentyPixelWidth(context)*8,),
            Text("Congratulations!",style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),),
            Text("You own this ticket",style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),),
            Expanded(child: SizedBox()),
            CustomButtom(textt: "Go to home", routeNamee: HomeScreen.pageRoute),
            verticalSpace(twentyPixelHeight(context)*1.5),
          ],
        ),
      ),
    );
  }
}