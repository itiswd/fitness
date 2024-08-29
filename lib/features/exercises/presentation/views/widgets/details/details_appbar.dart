import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:fitness_master/core/utils/app_router.dart';
import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/constants/app_color.dart';


class DetailsAppbar extends StatelessWidget {
  const DetailsAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Get.offAllNamed(AppRouter.kOnBoardingView);

          
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: AppColor.white,
          ),
        ),
        SizedBox(width: 16.0.w),
        Text(
          'Details',
          style: AppStyles.header1,
        ),
      ],
    );
  }
}
