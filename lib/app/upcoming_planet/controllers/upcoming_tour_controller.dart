import 'package:get/get.dart';
import 'package:space_app/app/upcoming_planet/models/upcomint_tour_model.dart';

class TourController extends GetxController {
  var tours = <TourModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchTours();
  }

  void fetchTours() {
    var tourData = [
    {
      "destination": "Mars",
      "experience": "The Red Planet Experience",
      "description":
          "Land at Marsport Amusement Park, explore Martian gravity, visit real exploration sites.",
      "travel_time": "6 months one-way",
      "budget": {
        "1_person": 500000,
        "2_people": 950000,
        "family_pack": 1800000
      },
      "rocket": "SpaceX Starship or NASA’s SLS",
      "total_tour_time": "18 months (round trip, including 6-month stay)",
      "inclusions": [
        "Meals",
        "Snacks",
        "Entertainment",
        "Space gear",
        "Accommodation in Mars domes"
      ],
      "exciting_note": "First to experience Martian sunrises and sunsets!"
    },
    {
      "destination": "Moon",
      "experience": "The Lunar Getaway",
      "description":
          "Bounce around Luna Park, tour Apollo landing sites, and enjoy stunning Earth views.",
      "travel_time": "3 days one-way",
      "budget": {"1_person": 100000, "2_people": 180000, "family_pack": 320000},
      "rocket": "Orion Capsule",
      "total_tour_time": "2 weeks (round trip, including 7-day stay)",
      "inclusions": [
        "Space meals",
        "Moon gear",
        "Low-gravity activities",
        "Moon dust souvenir"
      ],
      "exciting_note":
          "Perfect for a weekend adventure! Enjoy a space BBQ with Earthrise!"
    },
    {
      "destination": "Jupiter",
      "experience": "The Gas Giant Flyby",
      "description":
          "Orbit Jupiter, view the Great Red Spot, and fly by Europa and other moons.",
      "travel_time": "2 years one-way",
      "budget": {
        "1_person": 700000,
        "2_people": 1300000,
        "family_pack": 2500000
      },
      "rocket": "Interplanetary Spaceship",
      "total_tour_time": "5 years (round trip, including orbiting)",
      "inclusions": [
        "Stargazing lounge",
        "Snacks",
        "Drinks",
        "Virtual guided tours of moons"
      ],
      "exciting_note": "Thrill of flying through Jupiter’s magnetic field!"
    },
    {
      "destination": "Saturn",
      "experience": "Ringside Viewing",
      "description":
          "Fly around Saturn’s rings, admire ice and rock formations from panoramic windows.",
      "travel_time": "3 years one-way",
      "budget": {
        "1_person": 900000,
        "2_people": 1700000,
        "family_pack": 3200000
      },
      "rocket": "Spacecruiser with panoramic viewing windows",
      "total_tour_time": "7 years (round trip)",
      "inclusions": [
        "360° space viewing deck",
        "Entertainment",
        "Gourmet space meals",
        "Saturn memorabilia"
      ],
      "exciting_note": "Float in zero gravity while orbiting Saturn’s rings!"
    },
    {
      "destination": "Venus",
      "experience": "Cloud Skimming Adventure",
      "description":
          "Soar above Venus’s thick clouds in a state-of-the-art ship and enjoy stunning views.",
      "travel_time": "5 months one-way",
      "budget": {
        "1_person": 600000,
        "2_people": 1100000,
        "family_pack": 2000000
      },
      "rocket": "Venus Flyer 9000",
      "total_tour_time": "14 months (round trip)",
      "inclusions": [
        "Deluxe suites",
        "Venus-viewing spots",
        "Meals",
        "Cloud-skimming tours"
      ],
      "exciting_note": "Record Venus’s lightning storms!"
    },
    {
      "destination": "Comet Flyby",
      "experience": "The Ultimate Adventure",
      "description":
          "Fly alongside a speeding comet as it travels through the solar system, witnessing its tail.",
      "travel_time": "2-4 years",
      "budget": {
        "1_person": 800000,
        "2_people": 1500000,
        "family_pack": 2900000
      },
      "rocket": "Comet Cruiser",
      "total_tour_time": "5-10 years (round trip)",
      "inclusions": [
        "Onboard accommodations",
        "Space meals",
        "Comet-viewing telescope",
        "Space suit"
      ],
      "exciting_note": "Witness a comet’s tail lighting up space!"
    }
  ];

    tours.assignAll(tourData.map((e) => TourModel.fromJson(e)).toList());
  }
}
