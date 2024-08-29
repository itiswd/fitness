import 'dart:io';
import 'package:flutter/material.dart';
import '../../../../../../core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomColumnForProgress extends StatelessWidget {
  const CustomColumnForProgress({
    super.key,
    required this.title,
    required this.imagePath,
  });

  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      ClipRRect(
                  borderRadius: BorderRadius.circular(40.0.r),
                  child: Image.file(
                    width: 110.w,
                    height: 180.h,
                    File(imagePath),
                    fit: BoxFit.cover, // Adjust fit as needed
                  ),
                ),
        SizedBox(height: 16.h),
        Text(title, style: AppStyles.body1),
      ],
    );
  }
}
