class TourModel {
  final String destination;
  final String experience;
  final String description;
  final String travelTime;
  final Budget budget;
  final String rocket;
  final String totalTourTime;
  final List<String> inclusions;
  final String excitingNote;

  TourModel({
    required this.destination,
    required this.experience,
    required this.description,
    required this.travelTime,
    required this.budget,
    required this.rocket,
    required this.totalTourTime,
    required this.inclusions,
    required this.excitingNote,
  });

  factory TourModel.fromJson(Map<String, dynamic> json) {
    return TourModel(
      destination: json['destination'],
      experience: json['experience'],
      description: json['description'],
      travelTime: json['travel_time'],
      budget: Budget.fromJson(json['budget']),
      rocket: json['rocket'],
      totalTourTime: json['total_tour_time'],
      inclusions: List<String>.from(json['inclusions']),
      excitingNote: json['exciting_note'],
    );
  }
}

class Budget {
  final int onePerson;
  final int twoPeople;
  final int familyPack;

  Budget({
    required this.onePerson,
    required this.twoPeople,
    required this.familyPack,
  });

  factory Budget.fromJson(Map<String, dynamic> json) {
    return Budget(
      onePerson: json['1_person'],
      twoPeople: json['2_people'],
      familyPack: json['family_pack'],
    );
  }
}
