import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../core/constants/app_color.dart';
import '../../../../../../core/constants/app_assets.dart';

class CustomDropDownList extends StatelessWidget {
  const CustomDropDownList(
      {super.key,
      required this.list,
      required this.onValueChanged,
      required this.currentValue});
  final List<String> list;
  final void Function(String? value) onValueChanged;
  final String currentValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
      decoration: BoxDecoration(
        color: AppColor.veryDarkGray, // Set the background color
        borderRadius: BorderRadius.circular(10.0), // Rounded corners
      ),
      child: DropdownButton<String>(
        value: currentValue,
        icon: SvgPicture.asset(AppAssets.arrowDown),
        iconSize: 24,
        underline: const SizedBox(), // Remove the underline
        onChanged: onValueChanged,
        dropdownColor: AppColor.veryDarkGray, // Dropdown background color
        isExpanded: true, // Ensures the Row takes up the full width
        selectedItemBuilder: (BuildContext context) {
          return list.map<Widget>((String value) {
            return Row(
              children: [
                Text(
                  value,
                  style: AppStyles.body400_14, // Set text color
                ),
                const SizedBox(width: 8), // Space between text and icon
              ],
            );
          }).toList();
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: AppStyles.body400_14, // Set text color
            ),
          );
        }).toList(),
      ),
    );
  }
}
