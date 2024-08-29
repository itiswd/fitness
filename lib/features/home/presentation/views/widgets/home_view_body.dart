import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../../../core/constants/const.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import 'package:fitness_master/core/utils/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/constants/app_assets.dart';
import '../../../../../core/service/shared_preferences_singleton.dart';
import 'package:fitness_master/features/home/presentation/views/widgets/worout_for_the_week.dart';
import 'package:fitness_master/features/home/presentation/views/widgets/todays_time_counter.dart';
import 'package:fitness_master/features/home/presentation/views/widgets/custom_drob_contianer.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    SharedPref.setBool(kIsOnBoardingView,true);
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            CustomAppBar(
              title: "Home",
              onPressed: () {
                 Get.toNamed(AppRouter.kPlanningView);
                
              },
              icon: AppAssets.editIcon,
            ),
            SizedBox(
              height: 24.h,
            ),
            const CustomDrobContainer(),
            SizedBox(
              height: 24.h,
            ),
            const TodaysTimeCounter(),
            SizedBox(
              height: 24.h,
            ),
            const WoroutForTheWeek(),
            SizedBox(
              height: 88.0.h,
            ),
          ],
        ),
      ),
    );
  }
}

