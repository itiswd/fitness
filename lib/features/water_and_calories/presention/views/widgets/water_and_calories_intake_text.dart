import 'package:flutter/material.dart';
import '../../../../../core/utils/app_styles.dart';


class WaterAndCaloriesIntakeText extends StatelessWidget {
  const WaterAndCaloriesIntakeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Water & Calories\nIntake",
          style: AppStyles.header1,
          textAlign: TextAlign.start,
        ));
  }
}