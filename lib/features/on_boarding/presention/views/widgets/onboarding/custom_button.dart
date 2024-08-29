import 'package:flutter/material.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../core/constants/app_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        onPressed: onTap,
        color: AppColor.theme,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 28.0.w, vertical: 12.0.h),
          child: Text(
            "Next",
            style: AppStyles.body1.copyWith(color: AppColor.black),
          ),
        ),
      ),
    );
  }
}
