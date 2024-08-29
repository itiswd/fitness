import 'package:get/get.dart';
import 'package:fitness_master/core/constants/const.dart';
import 'package:fitness_master/core/service/shared_preferences_singleton.dart';

class PlanningGoalController extends GetxController {
  late int numberOfGoal;
  late String goal;

  final List<String> planningList = [
    "lose\nweight",
    "build\nmuscle",
    "Lead\na healthy\nlifestyle"
  ];

  @override
  void onInit() {
    super.onInit();
    goal = SharedPref.getString(kPlanningGoal);
    numberOfGoal = goal.isEmpty ? 0 : _getNumberOfGoal();
  }

  void changeGoal(int index) {
    numberOfGoal = index;
    SharedPref.setString(kPlanningGoal, planningList[index]);
    update();
  }

  int _getNumberOfGoal() {
    return planningList.indexWhere((item) => item == goal);
  }
}







