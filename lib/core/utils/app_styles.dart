import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/constants/app_color.dart';

abstract class AppStyles {
  static TextStyle header1 = TextStyle(
      fontWeight: FontWeight.w600, fontSize: 32.sp, color: AppColor.white);
  static TextStyle body1 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
    color: AppColor.white,
  );
  static TextStyle body2 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20.sp,
    color: AppColor.white,
  );
  
  static TextStyle body3 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 22.sp,
    color: AppColor.white,
  );
  static TextStyle body4 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 13.sp,
    color: AppColor.white,
  );
      static TextStyle body400_14 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    color: AppColor.white,
  );
  static TextStyle body5 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    color: AppColor.white,
  );
}
