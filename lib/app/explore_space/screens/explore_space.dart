import 'package:flutter/material.dart';
import 'package:space_app/app/explore_space/screens/photo_gallery.dart';
import 'package:space_app/app/explore_space/screens/photo_of_the_day.dart';
import 'package:space_app/app/explore_space/screens/planet_distance.dart';
import 'package:space_app/app/explore_space/screens/space_weight.dart';
import 'package:space_app/app/explore_space/widgets/custom_explore_space_item.dart';
import 'package:space_app/app/home/screens/home_screen.dart';
import 'package:space_app/app/widgets/custom_appbar.dart';
import 'package:space_app/general/utils/responsive.dart';

class ExploreSpace extends StatelessWidget {
  static const pageRoute = "/explore-space";
  const ExploreSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(titlee: "Explore Space",customRoute: HomeScreen.pageRoute,),
      body: Container(
        padding: EdgeInsets.only(
          left: twentyPixelWidth(context),
          right: twentyPixelWidth(context)
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/spaces/bg10.jpg",),
            fit: BoxFit.cover,
          ),
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomExploreSpaceItem(textt: 'Photo Gallary\n',imageUrl: "assets/spaces/exp1.png",pageUrl: PhotoGallery.pageRoute,),
                CustomExploreSpaceItem(textt: 'Photo of the\nday',imageUrl: "assets/spaces/exp2.png",pageUrl: PhotoOfTheDay.pageRoute),
              ],
            ),

             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomExploreSpaceItem(textt: 'Space weight\ncalculation',imageUrl: "assets/spaces/exp3.png",pageUrl: SpaceWeight.pageRoute),
                CustomExploreSpaceItem(textt: 'Planet distance\ncalculation',imageUrl: "assets/spaces/exp4.png",pageUrl: PlanetDistance.pageRoute),
              ],
            )
          ],
        ),
      ),
    );
  }
}
