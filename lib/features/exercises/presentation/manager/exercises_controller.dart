import 'package:get/get.dart';

class ExercisesController extends GetxController {
  int currentIndex = 0;
  bool isSaved = false;
  void changeSaved() {
    isSaved = !isSaved;
    update();
  }

  void changeIndex(int index) {
    currentIndex = index;
    update();
  }
}
