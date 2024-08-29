import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/features/home/presentation/views/widgets/custom_calendar.dart';

class CustomDrobContainer extends StatefulWidget {
  const CustomDrobContainer({
    super.key,
  });

  @override
  State<CustomDrobContainer> createState() => _CustomDrobContainerState();
}

class _CustomDrobContainerState extends State<CustomDrobContainer> {
  bool isDrobed = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.r),
        color: AppColor.black,
      ),
      padding: EdgeInsets.all(12.r),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(AppAssets.fireIcon),
              Column(
                children: [
                  Text(
                    "Weeks streak",
                    style: AppStyles.body2,
                  ),
                  Text(
                    "Keep going!",
                    style: AppStyles.body1,
                  ),
                ],
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      isDrobed = !isDrobed;
                    });
                  },
                  icon: SvgPicture.asset(AppAssets.arrowDown))
            ],
          ),
          CustomCalendar(isDrobed: isDrobed),
        ],
      ),
    );
  }
}
