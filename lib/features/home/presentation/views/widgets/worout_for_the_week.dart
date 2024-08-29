import 'package:fitness_master/core/constants/app_color.dart';
import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class WoroutForTheWeek extends StatelessWidget {
  const WoroutForTheWeek({super.key});
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 20.0.h),
      width: 343.0.w,
      decoration: BoxDecoration(
        color: AppColor.black,
        borderRadius: BorderRadius.circular(12.0.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Workouts for the week',
            style: AppStyles.body3,
          ),
          SizedBox(height: 20.0.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              7,
              (index) {
                return WorkOutRowElement(
                  text: DateFormat('EE').format(
                    now.add(
                      Duration(days: index),
                    ),
                  ),
                  num: now.day + index,
                  isFilled: index < 4 ? true : false,
                );
              },
            ),
          ),
          SizedBox(height: 20.0.h),
          Align(
            child: Text(
              'Goal for the week has been met!',
              style: AppStyles.body1.copyWith(
                color: AppColor.theme,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WorkOutRowElement extends StatelessWidget {
  final String text;
  final int num;
  final bool isFilled;

  const WorkOutRowElement({
    super.key,
    required this.text,
    required this.num,
    required this.isFilled,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42.0.w,
      height: 60.0.h,
      decoration: BoxDecoration(
        color: AppColor.veryDarkGray,
        border: Border.all(
          width: 1.0,
          color: isFilled ? AppColor.theme : AppColor.veryDarkGray,
        ),
        borderRadius: BorderRadius.circular(50.0.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: AppStyles.body5,
          ),
          SizedBox(height: 4.0.h),
          Divider(
            height: 1,
            endIndent: 7.0.w,
            indent: 7.0.w,
          ),
          SizedBox(height: 4.0.h),
          Text(
            '$num',
            style: AppStyles.body5,
          ),
        ],
      ),
    );
  }
}
