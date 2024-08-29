import 'package:get/get.dart';
import '../../../../core/constants/const.dart';
import '../../../../core/utils/app_router.dart';
import '../../../../core/service/shared_preferences_singleton.dart';
import 'package:fitness_master/features/progress/presentation/manager/progress_controller.dart';

class SplashController extends GetxController {
  final controller = Get.find<ProgressController>();
  @override
  void onInit() {
    super.onInit();

    _executeNavigation();
  }

  void _executeNavigation() {
    bool isOnBoardingView = SharedPref.getBool(kIsOnBoardingView);
    Future.delayed(const Duration(seconds: 3), () {
      controller.fetchData();
      if (isOnBoardingView) {
        Get.offNamed(AppRouter.kBottomNavigationBar);
      } else {
        Get.offNamed(AppRouter.kOnBoardingView);
      }
    });
  }
}
