import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../manager/new_progress_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/widgets/main_button.dart';
import 'package:fitness_master/core/constants/app_color.dart';
import 'package:fitness_master/features/progress/presentation/views/widgets/new_progrees/add_image.dart';
import 'package:fitness_master/features/progress/presentation/views/widgets/new_progrees/custom_widget_dropd_dow_list.dart';

class NewProgreesViewBody extends StatelessWidget {
  const NewProgreesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<NewProgressController>();
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    size: 30.0.r,
                    Icons.arrow_back_ios,
                    color: AppColor.white,
                  )),
              SizedBox(
                width: 16.0.w,
              ),
              Text(
                "New Progress",
                style: AppStyles.header1,
              ),
            ],
          ),
          SizedBox(
            height: 24.h,
          ),
          const AddImage(),
          SizedBox(
            height: 24.h,
          ),
          const CustomWidgetDropDownList(),
          const Spacer(),
          GetBuilder<NewProgressController>(builder: (controller) {
            return MainButton(
              onTap: () {
                controller.updateProgressMap();
              },
              color: AppColor.theme,
              text: "Save",
              textColor: AppColor.black,
            );
          }),
          const Spacer(),
        ],
      ),
    ));
  }
}
