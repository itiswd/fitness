import 'package:fitness_master/core/constants/app_color.dart';
import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsMainElement extends StatelessWidget {
  final String title;
  const SettingsMainElement({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0.h,
      decoration: BoxDecoration(
        color: AppColor.black,
        borderRadius: BorderRadius.circular(10.0.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0.w),
        child: Row(
          children: [
            Text(
              title,
              style: AppStyles.body1,
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward,
              color: AppColor.white,
            )
          ],
        ),
      ),
    );
  }
}
