import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String text;
  final void Function()? onTap;
  const MainButton({
    super.key,
    required this.color,
    required this.text,
    required this.textColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(13.0.r),
      onTap: onTap,
      child: Container(
        height: 46.h,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(13.r),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: AppStyles.body1.copyWith(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
