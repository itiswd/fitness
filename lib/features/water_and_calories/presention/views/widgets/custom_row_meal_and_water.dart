import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../../../../core/constants/app_assets.dart';
import 'package:fitness_master/features/water_and_calories/presention/manager/water_meal_controller.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/widgets/custom_meal_and_water_item.dart';

class CustomRowMealAndWater extends StatefulWidget {
  const CustomRowMealAndWater({
    super.key,
  });

  @override
  State<CustomRowMealAndWater> createState() => _CustomRowMealAndWaterState();
}

class _CustomRowMealAndWaterState extends State<CustomRowMealAndWater> {
  List<String> mealAndWaterTextList = ["Add a meal", "Add water\nintake"];
  List<String> mealAndWaterIconList = [AppAssets.food, AppAssets.water];

  @override
  Widget build(BuildContext context) {
   
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        2,
        (index) {
          return GetBuilder<WaterMealController>(
            builder: (controller) {
              return CustomMealAndWaterItem(
                onTap: () {
                  controller.changeView(index);
                },
                text: mealAndWaterTextList[index],
                svgPicture: SvgPicture.asset(mealAndWaterIconList[index]),
                number: index,
              );
            },
          );
        },
      ),
    );
  }
}
