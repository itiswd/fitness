import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:fitness_master/features/exercises/presentation/views/widgets/exercises/exercise_main_element.dart';
import 'package:fitness_master/features/exercises/presentation/views/widgets/exercises/exercises_tapbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExercisesViewBody extends StatelessWidget {
  const ExercisesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.0.w),
            child: Text(
              'Exercises',
              style: AppStyles.header1,
            ),
          ),
          SizedBox(height: 24.0.h),
          const ExercisesTapbar(),
          SizedBox(height: 24.0.h),
          const ExerciseMainElement(),
        ],
      ),
    );
  }
}
