import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/app_assets.dart';


class OnBoardingController extends GetxController {
  late PageController pageController;

  final List<String> images = [
    AppAssets.onBording1,
    AppAssets.onBording2,
    AppAssets.onBording3,
  ];

  final List<String> texts = [
    'Exercise library',
    "Progress tracking",
    "Calorie and water tracking"
  ];

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
