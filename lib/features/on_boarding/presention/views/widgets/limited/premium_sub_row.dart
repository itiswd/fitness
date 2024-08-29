import 'package:fitness_master/core/constants/const.dart';
import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PremiumSubRow extends StatelessWidget {
  final int index;
  const PremiumSubRow({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 8.0.h,
        right: 8.0.w,
        left: 8.0.w,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Icon(
              Icons.done,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 8.w),
          Text(
            premiumList[index],
            style: AppStyles.body1,
          )
        ],
      ),
    );
  }
}
