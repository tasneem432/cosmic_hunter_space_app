import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:space_app/app/explore_space/helpers/explore_space_helpers.dart';
import 'package:space_app/app/explore_space/models/photo_day_model.dart';

class PhotoDayController extends GetxController {
  var isLoading = true.obs;
  var errorMessage = ''.obs;
  var photoDays = <PhotoDayModel>[].obs; 
  var startDate = "".obs;

  var startDatee = ''.obs;
  var endDatee = ''.obs;
  

  @override
  void onInit() {
    super.onInit();
   fetchPhotoDays();
  }

  void fetchPhotoDays({String? startDate}) async {
    isLoading(true);
    try {
      var photos = await ExploreSpaceHelpers().getPhotoDays(startDate: startDate);
      if (photos != null) {
        photoDays.assignAll(photos); // Update the observable list
      } else {
        errorMessage("No photos found");
      }
    } catch (e) {
      errorMessage("Error fetching photos: $e");
    } finally {
      isLoading(false);
    }
  }

    void setStartDate(DateTime date) {
    startDatee.value = DateFormat('yyyy-MM-dd').format(date);
  }

  void setEndDate(DateTime date) {
    endDatee.value = DateFormat('yyyy-MM-dd').format(date);}

  void startStartDate(DateTime date) {
    startDate.value = DateFormat('yyyy-MM-dd').format(date);}
}
