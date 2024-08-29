import 'package:get/get.dart';
import '../../../../core/constants/const.dart';
import '../../../../core/service/shared_preferences_singleton.dart';

class NumberPickerMinsController extends GetxController {
  late int noOfPlanningDays;
  @override
  void onInit() {
    noOfPlanningDays = SharedPref.getInt(kNoOfDaysForPlanning);
    if (noOfPlanningDays == -1) {
      noOfPlanningDays = 40;
    }
    super.onInit();
  }

  void onValueChanged(int value) {
    noOfPlanningDays = value;
    SharedPref.setInt(kNoOfDaysForPlanning, noOfPlanningDays);
    update();
  }
}
