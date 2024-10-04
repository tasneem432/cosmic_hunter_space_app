import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:space_app/app/explore_space/models/photo_day_model.dart';
import 'package:space_app/general/config/apis.dart';

class ExploreSpaceHelpers {

   String getYesterdayDate() {
    DateTime yesterday = DateTime.now().subtract(Duration(days: 1));
    // Format the date as 'yyyy-MM-dd'
    String formattedDate = DateFormat('yyyy-MM-dd').format(yesterday);
    return formattedDate;
  }
  




  Future<List<PhotoDayModel>?> getPhotoDays({String? startDate}) async {
    String url = Apis.photoOfTheDay;
    if (startDate != null) {
      url += "&start_date=$startDate"; // Append start_date if provided
    }else{
      url += "&start_date=${getYesterdayDate()}"; 
    }
    print(getYesterdayDate());
    print(DateTime.now());

    try {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var data = response.body;

        // Parse the JSON response as a list of PhotoDayModel
        return List<PhotoDayModel>.from(
          json.decode(data).map((x) => PhotoDayModel.fromJson(x))
        );
      } else {
        print("Error: ${response.statusCode} - ${response.body}");
        return null;
      }
    } catch (e) {
      print("Error fetching Photo of the Day: $e");
      return null;
    }
  }
}
