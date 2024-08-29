import 'package:flutter/material.dart';
import '../../../../../core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/constants/app_color.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TodaysTimeCounter extends StatelessWidget {
  const TodaysTimeCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.r),
        color: AppColor.black,
      ),
      child: Row(
        children: [
          SizedBox(
              width: 170.w,
              child: Text(
                "Today's time\ncounter",
                textAlign: TextAlign.center,
                style: AppStyles.body2,
              )),
          Expanded(
              child: CircularPercentIndicator(
            backgroundColor: AppColor.background,
            progressColor: AppColor.theme,
            percent: 0.5,
            circularStrokeCap: CircularStrokeCap.round,
            center: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "10/20",
                  style: AppStyles.body2,
                ),
                Text(
                  "mins",
                  style: AppStyles.body4.copyWith(color: AppColor.darkGray),
                )
              ],
            ),
            lineWidth: 18.r,
            radius: 65.r,
          ))
        ],
      ),
    );
  }
}
