import 'package:flutter/material.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../core/constants/app_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/features/progress/presentation/views/widgets/progrees/custom_column_for_progress.dart';


class ProgressCategoryCard extends StatelessWidget {
  const ProgressCategoryCard({
    super.key,
    required this.category,
    required this.progressData,
  });

  final String category;
  final Map<String, String> progressData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      height: 320.h,
      decoration: BoxDecoration(
        color: AppColor.veryDarkGray,
        borderRadius: BorderRadius.circular(14.0.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(category, style: AppStyles.body2),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: progressData.length,
              itemBuilder: (context, index) {
                final month = progressData.keys.elementAt(index);
                final imagePath = progressData.values.elementAt(index);
                return Padding(
                  padding: EdgeInsets.only(
                      left: 20.0.w,
                      right: index == progressData.length - 1 ? 20.0.w : 0),
                  child: CustomColumnForProgress(
                    title: month,
                    imagePath: imagePath,
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
