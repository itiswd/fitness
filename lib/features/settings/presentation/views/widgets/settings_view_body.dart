import 'package:fitness_master/core/constants/app_color.dart';
import 'package:fitness_master/core/constants/const.dart';
import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:fitness_master/core/widgets/main_button.dart';
import 'package:fitness_master/features/settings/presentation/views/widgets/settings_main_element.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Settings',
                style: AppStyles.header1,
              ),
            ),
            SizedBox(height: 24.0.h),
            ...List.generate(
              4,
              (index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: index != 3 ? 16.0.h : 0.0.h),
                  child: SettingsMainElement(
                    title: settingsTitles[index],
                  ),
                );
              },
            ),
            SizedBox(height: 24.0.h),
            const MainButton(
              color: AppColor.theme,
              textColor: AppColor.black,
              text: 'Buy premium for \$0,99',
            ),
          ],
        ),
      ),
    );
  }
}
