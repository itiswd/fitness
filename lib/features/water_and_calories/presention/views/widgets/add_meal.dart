import 'package:fitness_master/features/water_and_calories/presention/manager/water_meal_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/constants/app_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/widgets/main_button.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/widgets/custom_text_and_contianer.dart';

class AddMeal extends StatelessWidget {
  const AddMeal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(22.r),
      decoration: BoxDecoration(
        color: AppColor.black,
        borderRadius: BorderRadius.circular(14.0.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "New meal",
            style: AppStyles.body2,
          ),
          SizedBox(height: 20.h),
          Text(
            "New of meal",
            style: AppStyles.body1,
          ),
          SizedBox(height: 12.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.0.h),
            decoration: BoxDecoration(
              color: AppColor.background,
              borderRadius: BorderRadius.circular(14.0.r),
            ),
            child: Text(
              "Breakfast",
              style: AppStyles.body400_14,
            ),
          ),
          SizedBox(height: 20.h),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextAndContianer(
                title: "Calories",
                subTitle: "10",
              ),
              CustomTextAndContianer(
                title: "Protein",
                subTitle: "10",
              ),
            ],
          ),
          SizedBox(height: 20.h),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextAndContianer(
                title: "Fat",
                subTitle: "10",
              ),
              CustomTextAndContianer(
                title: "Carbohydrate",
                subTitle: "10",
              ),
            ],
          ),
          SizedBox(height: 20.h),
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
