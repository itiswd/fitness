import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNumberPicker extends StatelessWidget {
  const CustomNumberPicker(
      {super.key,
      required this.maxValue,
      required this.minValue,
      required this.onValueChanged,
      required this.currentValue});

  final int maxValue;
  final int minValue;
  final int currentValue;
  final void Function(int value) onValueChanged;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        _buildBackground(),
        _buildNumberPicker(),
      ],
    );
  }

  Widget _buildBackground() {
    return Positioned(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(13.0.r),
        ),
        width: 77.0.w,
        height: 46.0.h,
      ),
    );
  }

  Widget _buildNumberPicker() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        NumberPicker(
            selectedTextStyle:
                const TextStyle(color: Colors.white, fontSize: 24),
            textStyle: const TextStyle(color: Colors.white),
            value: currentValue,
            minValue: minValue,
            maxValue: maxValue,
            onChanged:onValueChanged),
      ],
    );
  }
}
