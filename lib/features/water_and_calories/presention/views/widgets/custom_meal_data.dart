import 'package:fitness_master/core/constants/const.dart';
import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomMeal extends StatelessWidget {
  final String name;
  final CrossAxisAlignment cross;
  const CustomMeal({
    super.key,
    required this.name,
    required this.cross,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: cross,
      children: [
        Text(
          name,
          style: AppStyles.body2,
        ),
        SizedBox(height: 16.0.h),
        SizedBox(
          height: 48.0.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              4,
              (index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      meals['title'][index],
                      style: AppStyles.body5,
                    ),
                    const Spacer(),
                    Text(
                      meals['value'][index].toString(),
                      style: AppStyles.body1,
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
