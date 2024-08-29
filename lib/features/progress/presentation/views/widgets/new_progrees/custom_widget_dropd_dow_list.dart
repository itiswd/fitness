import 'package:get/get.dart';
import 'package:flutter/widgets.dart';
import '../../../../../../core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/features/progress/presentation/manager/new_progress_controller.dart';
import 'package:fitness_master/features/progress/presentation/views/widgets/new_progrees/custom_dropd_down_list.dart';



class CustomWidgetDropDownList extends StatelessWidget {
  const CustomWidgetDropDownList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
           Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Category",
                style: AppStyles.body1,
              )),
          SizedBox(
            height: 12.h,
          ),
        GetBuilder<NewProgressController>(builder: (controller) {
          return CustomDropDownList(
              list: controller.muscles,
              onValueChanged: (value) {
                controller.onValueChangedCategory(value);
              },
              currentValue: controller.currentValueOfCategory);
        }),
            SizedBox(
            height: 24.h,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Month",
                style: AppStyles.body1,
              )),
          SizedBox(
            height: 12.h,
          ),
        GetBuilder<NewProgressController>(builder: (controller) {
          return CustomDropDownList(
              list: controller.months,
              onValueChanged: (value) {
                controller.onValueChangedMonth(value);
              },
              currentValue: controller.currentValueOfMonth);
        }),
      ],
    );
  }
}
