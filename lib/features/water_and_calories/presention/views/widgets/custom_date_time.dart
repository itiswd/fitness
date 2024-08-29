import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomDateTime extends StatelessWidget {
  const CustomDateTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    return Text(
      '${DateFormat('MMM').format(
        now,
      )}  ${now.day}, ${DateFormat('y').format(
        now,
      )}',
      style: AppStyles.body2,
    );
  }
}
