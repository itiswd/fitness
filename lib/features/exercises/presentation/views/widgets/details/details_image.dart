import 'package:fitness_master/core/constants/app_assets.dart';
import 'package:fitness_master/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsImage extends StatelessWidget {
  const DetailsImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.0.w,
      height: 173.0.h,
      decoration: const BoxDecoration(
        color: AppColor.veryDarkGray,
        borderRadius: BorderRadius.all(
          Radius.circular(14.0),
        ),
        image: DecorationImage(
          image: AssetImage(
            AppAssets.image1,
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
