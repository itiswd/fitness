import 'package:flutter/material.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/constants/app_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextAndContianer extends StatelessWidget {
  const CustomTextAndContianer({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.body1,
        ),
        SizedBox(height: 12.h),
        Container(
          width: 140.w,
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.0.h),
          decoration: BoxDecoration(
            color: AppColor.background,
            borderRadius: BorderRadius.circular(14.0.r),
          ),
          child: Text(
            subTitle,
            style: AppStyles.body400_14,
          ),
        ),
      ],
    );
  }
}
