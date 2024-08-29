import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../manager/number_picker_days_controller.dart';
import '../../../manager/number_picker_mins_controller.dart';
import 'package:fitness_master/features/on_boarding/presention/views/widgets/planing/custom_number_picker.dart';

class CustomWidgetForMinAndDay extends StatelessWidget {
  const CustomWidgetForMinAndDay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GetBuilder<NumberPickerDaysController>(
          builder: (controller) => Row(
            children: [
              Text(
                "How many days a week\ndo you plan to exercise?",
                style: AppStyles.body1,
                textAlign: TextAlign.start,
              ),
              const Spacer(),
              CustomNumberPicker(
                currentValue: controller.noOfPlanningMins,
                maxValue: 7,
                minValue: 1,
                onValueChanged: (int value) {
                  controller.onValueChanged(value);
                },
              ),
              SizedBox(width: 8.w),
              Text(
                "day",
                style: AppStyles.body1,
              ),
            ],
          ),
        ),
        GetBuilder<NumberPickerMinsController>(
            builder: (controller) => Row(children: [
                  Text(
                    "How much time will you\ncover exercise?",
                    style: AppStyles.body1,
                    textAlign: TextAlign.start,
                  ),
                  const Spacer(),
                  CustomNumberPicker(
                    currentValue: controller.noOfPlanningDays,
                    maxValue: 200,
                    minValue: 5,
                    onValueChanged: (int value) {
                      controller.onValueChanged(value);
                    },
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    "min"  ,style: AppStyles.body1,
                  )
                ]))
      ],
    );
  }
}
