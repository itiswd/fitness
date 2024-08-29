import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../manager/planning_goal_controller.dart';
import 'package:fitness_master/features/on_boarding/presention/views/widgets/planing/planning_goal_item.dart';

class CustomRowGoal extends StatelessWidget {
  const CustomRowGoal({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PlanningGoalController>(
      builder: (controller) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(controller.planningList.length, (index) {
            return PlanningGoalItem(
              text: controller.planningList[index],
              onTap: () => controller.changeGoal(index),
              isClicked: controller.numberOfGoal == index,
            );
          }),
        );
      },
    );
  }
}
