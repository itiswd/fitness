import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/constants/app_color.dart';
import 'package:fitness_master/core/constants/app_assets.dart';
import 'package:fitness_master/features/progress/presentation/manager/new_progress_controller.dart';

class AddImage extends StatelessWidget {
  const AddImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewProgressController>(
      builder: (controller) {
        return GestureDetector(
          onTap: () => controller.showImagePickerOptions(),
          child: controller.image == null
              ? Container(
                  width: 140.w,
                  height: 230.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0.r),
                    color: AppColor.veryDarkGray,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      AppAssets.addImage,
                      fit: BoxFit.contain,
                      width: 45,
                      height: 45,
                    ),
                  ),
                )
              : ClipRRect(
                  borderRadius: BorderRadius.circular(40.0.r),
                  child: Image.file(
                    width: 140.w,
                    height: 230.h,
                    controller.image!,
                    fit: BoxFit.cover, // Adjust fit as needed
                  ),
                ),
        );
      },
    );
  }
}
