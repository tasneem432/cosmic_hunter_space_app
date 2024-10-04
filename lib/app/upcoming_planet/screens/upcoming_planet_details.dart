import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:space_app/app/upcoming_planet/controllers/upcoming_tour_controller.dart';
import 'package:space_app/app/upcoming_planet/screens/buy_ticket_screen.dart';
import 'package:space_app/app/upcoming_planet/widgets/custom_upcoming_text_item.dart';
import 'package:space_app/app/widgets/custom_appbar.dart';
import 'package:space_app/general/config/colors.dart';
import 'package:space_app/general/utils/blank_space.dart';
import 'package:space_app/general/utils/responsive.dart';

class UpcomingPlanetDetails extends StatelessWidget {
  static const pageRoute = "upcoming-planet-details";
  final TourController tourController = Get.put(TourController());


  UpcomingPlanetDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context)?.settings.arguments as Map;

   
    final tour = tourController.tours[arguments['index']];
    return Scaffold(
      appBar: CustomAppbar(
        titlee: "Tour details",
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(twentyPixelHeight(context)),
              

              CustomUpcomingTextItem(
                title: "Destination",
                description: tour.destination,
              ),

              
              CustomUpcomingTextItem(
                title: "Experience",
                description: tour.experience,
              ),

              
              CustomUpcomingTextItem(
                title: "Description",
                description: tour.description,
              ),

              
              CustomUpcomingTextItem(
                title: "Travle Time",
                description: tour.travelTime,
              ),

              Text("Budget: ",style: TextStyle(
                fontSize: 16,
                fontFamily: "Poppins",
                color: AppColor.whiteColor,
                fontWeight: FontWeight.w600
              ),),
              CustomUpcomingTextItem(
                title: "One person",
                description: tour.budget.onePerson.toString(),
              ),
              CustomUpcomingTextItem(
                title: "Two person",
                description: tour.budget.twoPeople.toString(),
              ),
              CustomUpcomingTextItem(
                title: "Family Pack",
                description: tour.budget.familyPack.toString(),
              ),

              
              CustomUpcomingTextItem(
                title: "Rocket",
                description: tour.rocket,
              ),

              
              CustomUpcomingTextItem(
                title: "Travle time",
                description: tour.travelTime,
              ),

              
              CustomUpcomingTextItem(
                title: "Includes",
                description: tour.inclusions.toString().substring(2,tour.inclusions.toString().length - 1),
              ),

              CustomUpcomingTextItem(
                title: "Exciting Note",
                description: tour.excitingNote,
              ),

              verticalSpace(twentyPixelHeight(context)),

              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, BuyTicketScreen.pageRoute);
                },
                child: Container(
                  width: double.infinity,
                  height: twentyPixelHeight(context)*2.5,
                  decoration: BoxDecoration(
                    color: AppColor.darkBlue,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                    child:Text("Buy Ticket",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                      color: AppColor.whiteColor
                    ),),
                  ),
                    ],
                  )
                ),
              ),

              

              
              verticalSpace(twentyPixelHeight(context) * .5),
              verticalSpace(twentyPixelHeight(context) * 1),
              
            ],
          ),
        ),
      ),
    );
  }
}
