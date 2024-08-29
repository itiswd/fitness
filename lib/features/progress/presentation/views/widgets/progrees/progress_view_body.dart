import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../manager/progress_controller.dart';
import '../../../../../../core/constants/const.dart';
import '../../../../../../core/utils/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/constants/app_assets.dart';
import 'package:fitness_master/core/widgets/custom_app_bar.dart';
import 'package:fitness_master/features/progress/presentation/views/widgets/progrees/progress_category_card.dart';

class ProgressViewBody extends StatelessWidget {
  const ProgressViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: ListView(
          children: [
            CustomAppBar(
              title: "Progress",
              icon: AppAssets.pluse,
              onPressed: () {
                Get.toNamed(AppRouter.kNewProgrees);
              },
            ),
            GetBuilder<ProgressController>(
              builder: (controller) {
                return Column(
                  children: progressMap.entries.map((entry) {
                    final category = entry.key;
                    final progressData = entry.value;
                    return ProgressCategoryCard(
                      category: category,
                      progressData: progressData,
                    );
                  }).toList(),
                );
              },
            ),
            SizedBox(height: 80.h),
          ],
        ),
      ),
    );
  }
}
