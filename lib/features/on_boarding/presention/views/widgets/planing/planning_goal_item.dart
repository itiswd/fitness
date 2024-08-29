import 'package:flutter/material.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../core/constants/app_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlanningGoalItem extends StatelessWidget {
  const PlanningGoalItem({
    super.key,
    required this.text,
    required this.onTap,
    required this.isClicked,
  });
  final String text;
  final void Function() onTap;
  final bool isClicked;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.r),
            color: isClicked ? AppColor.theme : AppColor.black,
          ),
          width: 100.w,
          height: 124.h,
          child: Center(
              child: Text(
            text,
            textAlign: TextAlign.center,
            style: AppStyles.body1
                .copyWith(color: isClicked ? AppColor.black : AppColor.white),
          )),
        ));
  }
}
