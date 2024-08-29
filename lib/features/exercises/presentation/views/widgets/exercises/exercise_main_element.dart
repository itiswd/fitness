import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:fitness_master/core/constants/const.dart';
import 'package:fitness_master/core/utils/app_router.dart';
import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/constants/app_color.dart';
import 'package:fitness_master/core/constants/app_assets.dart';
import 'package:fitness_master/features/exercises/presentation/manager/exercises_controller.dart';


class ExerciseMainElement extends StatelessWidget {
  const ExerciseMainElement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: Column(
        children: List.generate(
          6,
          (index) {
            return GetBuilder<ExercisesController>(
              builder: (controller) {
                return index == 5
                    ? SizedBox(height: 80.0.h)
                    : Padding(
                        padding: EdgeInsets.only(bottom: 12.0.h),
                        child: InkWell(
                          onTap: () {
                            Get.toNamed(AppRouter.kExercisesDetails);
                            
                          },
                          borderRadius: BorderRadius.circular(23.0.r),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: AppColor.veryDarkGray,
                              borderRadius: BorderRadius.all(
                                Radius.circular(23.0),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                              child: Column(
                                children: [
                                  SizedBox(height: 20.0.h),
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Name of exercise',
                                            style: AppStyles.body2,
                                          ),
                                          Text(
                                            exercises['title']
                                                [controller.currentIndex],
                                            style: AppStyles.body1,
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                      GetBuilder<ExercisesController>(
                                          builder: (controller) {
                                        return InkWell(
                                          onTap: () {
                                            controller.changeSaved();
                                          },
                                          child: Icon(
                                            controller.isSaved
                                                ? Icons.bookmark
                                                : Icons.bookmark_border,
                                            size: 24,
                                            color: AppColor.white,
                                          ),
                                        );
                                      })
                                    ],
                                  ),
                                  SizedBox(height: 16.0.h),
                                  Container(
                                    width: 303.0.w,
                                    height: 185.0.h,
                                    decoration: const BoxDecoration(
                                      color: AppColor.veryDarkGray,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(23.0),
                                      ),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          AppAssets.image11,
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20.0.h),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
              },
            );
          },
        ),
      ),
    );
  }
}
