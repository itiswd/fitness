import 'package:fitness_master/features/exercises/presentation/manager/exercises_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/constants/app_color.dart';
import 'package:fitness_master/core/widgets/main_button.dart';
import 'package:fitness_master/features/exercises/presentation/views/widgets/details/details_image.dart';
import 'package:fitness_master/features/exercises/presentation/views/widgets/details/details_appbar.dart';
import 'package:fitness_master/features/exercises/presentation/views/widgets/details/details_main_row.dart';
import 'package:get/get.dart';

class ExerciseDetailsViewBody extends StatelessWidget {
  const ExerciseDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ExercisesDetailsController());
    return GetBuilder<ExercisesDetailsController>(
      builder: (controller) {
        return SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DetailsAppbar(),
                SizedBox(height: 24.0.h),
                const DetailsMainRow(),
                SizedBox(height: 24.0.h),
                Text(
                  'Name of article',
                  style: AppStyles.body2,
                ),
                SizedBox(height: 24.0.h),
                const DetailsImage(),
                SizedBox(height: 24.0.h),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur.',
                  style: AppStyles.body4,
                ),
                const Spacer(
                  flex: 1,
                ),
                Align(
                  child: Text(
                    controller.formatTime(controller.remainingSeconds),
                    style: AppStyles.header1,
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                MainButton(
                  onTap: () {
                    controller.action();
                  },
                  color: AppColor.theme,
                  text: controller.isPlaying == false ? 'Start' : 'Stop',
                  textColor: AppColor.black,
                ),
                const Spacer(
                  flex: 6,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
