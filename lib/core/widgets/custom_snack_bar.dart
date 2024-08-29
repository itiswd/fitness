import 'package:fitness_master/core/constants/app_color.dart';
import 'package:get/get.dart';

void customSnackbar({
  required String title,
  required String message,
}) {
  Get.snackbar(
    title,
    message,
    colorText: AppColor.white,
    duration: const Duration(seconds: 2),
  );
}
