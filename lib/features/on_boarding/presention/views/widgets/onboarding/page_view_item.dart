import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../core/constants/app_assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.text,
    required this.pageController,
    required this.isLastPage,
  });
  final PageController pageController;
  final bool isLastPage;
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SvgPicture.asset(image),
        SizedBox(height: 121.0.h),
        SizedBox(
          width: 343.0.w,
          height: 95.0.h,
          child: Center(
            child: Text(
              text,
              style: AppStyles.header1,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(height: 20.h),
        TextButton(
          onPressed: () {
            if (isLastPage) {
              Get.offAllNamed(AppRouter.kPlanningView);

              
            } else {
              // Move to the next page
              pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            }
          },
          child: SvgPicture.asset(
            AppAssets.arrowIcon,
          ),
        ),
        SizedBox(height: 46.0.h),
      ],
    );
  }
}
