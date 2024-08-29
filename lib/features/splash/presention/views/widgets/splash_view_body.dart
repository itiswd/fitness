import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../manger/splash_controller.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:fitness_master/core/constants/app_assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<SplashController>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: SvgPicture.asset(AppAssets.logo)),
        Text(
          "Fitness Master",
          style: AppStyles.header1,
        ),
      ],
    );
  }
}
