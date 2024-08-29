import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../manager/on_boarding_controller.dart';
import 'package:fitness_master/features/on_boarding/presention/views/widgets/onboarding/page_view_item.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<OnBoardingController>(); 

    return PageView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: controller.images.length,
      controller: controller.pageController,
      itemBuilder: (context, index) {
        return PageViewItem(
          image: controller.images[index],
          text: controller.texts[index],
          pageController: controller.pageController,
          isLastPage: index == controller.images.length - 1,
        );
      },
    );
  }
}
