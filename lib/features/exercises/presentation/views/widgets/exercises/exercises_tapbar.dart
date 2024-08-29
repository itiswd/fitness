import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:fitness_master/core/constants/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/constants/app_color.dart';
import 'package:fitness_master/core/widgets/main_button.dart';
import 'package:fitness_master/features/exercises/presentation/manager/exercises_controller.dart';

class ExercisesTapbar extends StatefulWidget {
  const ExercisesTapbar({super.key});

  @override
  State<ExercisesTapbar> createState() => _ExercisesTapbarState();
}

class _ExercisesTapbarState extends State<ExercisesTapbar> {
  @override
  Widget build(BuildContext context) {
  
    return GetBuilder<ExercisesController>(
      builder: (controller) {
        return Padding(
          padding: EdgeInsets.only(left: 16.0.w),
          child: Wrap(
            runSpacing: 12.0.h,
            children: [
              ...List.generate(
                5,
                (index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      right: index == 2 ? 0 : 12.0.w,
                    ),
                    child: SizedBox(
                      width: exercises['width'][index],
                      child: MainButton(
                        onTap: () {
                          setState(() {
                            controller.changeIndex(index);
                          });
                        },
                        color: controller.currentIndex == index
                            ? AppColor.theme
                            : AppColor.veryDarkGray,
                        textColor: controller.currentIndex == index
                            ? AppColor.black
                            : AppColor.white,
                        text: exercises['title'][index],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
