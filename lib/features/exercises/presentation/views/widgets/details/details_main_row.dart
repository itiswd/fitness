import 'package:fitness_master/core/constants/app_color.dart';
import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsMainRow extends StatelessWidget {
  const DetailsMainRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Name of exercise',
          style: AppStyles.body3,
        ),
        const Spacer(),
        Container(
          width: 104.0.w,
          height: 30.0.h,
          decoration: BoxDecoration(
            color: AppColor.theme,
            borderRadius: BorderRadius.all(
              Radius.circular(30.0.r),
            ),
          ),
          child: Center(
            child: Text(
              '20 mins',
              style: AppStyles.body1.copyWith(
                color: AppColor.black,
              ),
            ),
          ),
        )
      ],
    );
  }
}
