import 'package:get/get.dart';
import '../../../../core/constants/const.dart';
import '../../../../core/service/shared_preferences_singleton.dart';


class NumberPickerDaysController extends GetxController{

 late int noOfPlanningMins;
@override
  void onInit() {
      noOfPlanningMins = SharedPref.getInt(kNoOfMinsForPlanning);
    if(noOfPlanningMins == -1){
      noOfPlanningMins = 3;
    }
    super.onInit();
  }
  void onValueChanged(int value) {  
    noOfPlanningMins = value;
    SharedPref.setInt(kNoOfMinsForPlanning, noOfPlanningMins);
    update();
  }
}


