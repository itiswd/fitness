import 'package:get/get.dart';

class WaterMealController extends GetxController {
  int view = 0;
  void changeView(int index) {
    index == 0 ? view = 1 : view = 2;
    update();
  }

  void defaultView() {
    view = 0;
    update();
  }
}
