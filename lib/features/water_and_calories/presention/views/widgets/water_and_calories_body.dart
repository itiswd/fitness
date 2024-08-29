import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'custom_row_meal_and_water.dart';
import 'water_and_calories_intake_text.dart';
import 'package:fitness_master/core/constants/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/constants/app_color.dart';
import 'package:fitness_master/features/home/presentation/views/widgets/custom_calendar.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/widgets/add_meal.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/widgets/add_water.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/widgets/custom_day.dart';
import 'package:fitness_master/features/water_and_calories/presention/manager/water_meal_controller.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/widgets/custom_meal_data.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/widgets/custom_date_time.dart';

class WaterAndCaloriesBody extends StatelessWidget {
  const WaterAndCaloriesBody({super.key});

  @override
  Widget build(BuildContext context) {
  
    return SafeArea(
      child: GetBuilder<WaterMealController>(
        builder: (controller) {
          return ListView(
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            children: [
              const WaterAndCaloriesIntakeText(),
              SizedBox(
                height: 24.h,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: CustomDateTime(),
              ),
              SizedBox(
                height: 24.h,
              ),
              controller.view == 0
                  ? const CustomRowMealAndWater()
                  : controller.view == 1
                      ? const AddMeal()
                      : const AddWater(),
              SizedBox(
                height: 24.h,
              ),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 20.0.h),
                decoration: BoxDecoration(
                  color: AppColor.black,
                  borderRadius: BorderRadius.circular(14.0.r),
                ),
                child: const CustomMeal(
                  name: 'Breakfast',
                  cross: CrossAxisAlignment.center,
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              const CustomCalendar(
                isDrobed: true,
              ),
              SizedBox(
                height: 24.h,
              ),
              const CustomDay(),
              SizedBox(height: 80.0.h),
            ],
          );
        },
      ),
    );
  }
}
