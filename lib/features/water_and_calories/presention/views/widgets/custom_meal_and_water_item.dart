import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../../../../core/constants/app_color.dart';
import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomMealAndWaterItem extends StatelessWidget {
  const CustomMealAndWaterItem({
    super.key,
    required this.text,
    required this.onTap,
    required this.svgPicture,
    required this.number,
  });
  final String text;
  final void Function() onTap;
  final int number;
  final SvgPicture svgPicture;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 160.w,
        height: 100.h,
        padding: const EdgeInsets.all(11),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.r),
          color: number == 0 ? AppColor.theme : AppColor.black,
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              number == 0 ? AppColor.black : AppColor.theme,
              BlendMode.srcIn,
            ),
            child: svgPicture,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            text,
            style: AppStyles.body1
                .copyWith(color: number == 0 ? AppColor.black : AppColor.white),
            textAlign: TextAlign.center,
          )
        ]),
      ),
    );
  }
}
