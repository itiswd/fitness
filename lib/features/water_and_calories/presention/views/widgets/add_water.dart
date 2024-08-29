import 'package:fitness_master/features/water_and_calories/presention/manager/water_meal_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'water_intake.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/constants/app_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/widgets/main_button.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/widgets/custom_row_meal_and_water.dart';

class AddWater extends StatelessWidget {
  final void Function()? onTap;
  const AddWater({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 358.0.h,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const CustomRowMealAndWater(),
          Positioned(
            top: 48.h,
            left: 0,
            right: 0,
            child: CustomWaterContianer(
              onTap: onTap,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomWaterContianer extends StatelessWidget {
  final void Function()? onTap;
  const CustomWaterContianer({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(22.r),
      decoration: BoxDecoration(
        color: AppColor.black,
        borderRadius: BorderRadius.circular(14.r),
      ),
      child: Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "New water intake",
                style: AppStyles.body2,
              )),
          const Align(
              alignment: Alignment.centerLeft,
              child: WaterIntake(
                title: '',
              )),
          SizedBox(
            height: 35.h,
          ),
          GetBuilder<WaterMealController>(
            builder: (controller) {
              return MainButton(
                color: AppColor.theme,
                text: "Save",
                textColor: AppColor.black,
                onTap: () {
                  controller.defaultView();
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
