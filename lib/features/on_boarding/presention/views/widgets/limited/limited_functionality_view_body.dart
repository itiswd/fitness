import 'package:fitness_master/core/constants/app_assets.dart';
import 'package:fitness_master/core/constants/app_color.dart';
import 'package:fitness_master/core/widgets/main_button.dart';
import 'package:fitness_master/features/on_boarding/presention/views/widgets/limited/premium_sub_row.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'premium_row.dart';
import 'package:flutter/material.dart';

class LimitedFunctionalityViewBody extends StatelessWidget {
  const LimitedFunctionalityViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const PremiumRow(),
          SizedBox(height: 27.0.h),
          Image.asset(
            AppAssets.image13,
          ),
          SizedBox(height: 32.0.h),
          ...List.generate(
            4,
            (index) => PremiumSubRow(
              index: index,
            ),
          ),
          SizedBox(height: 32.0.h),
          const MainButton(
            color: AppColor.theme,
            textColor: AppColor.black,
            text: 'Buy premium for \$0,99',
          ),
          SizedBox(height: 11.0.h),
        ],
      ),
    );
  }
}
