import '../utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';



class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key, required this.title, this.onPressed,  required this.icon,
  });
  final String title;
  final void Function()? onPressed;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppStyles.header1,
        ),
        const Spacer(),
        InkWell(
          onTap: onPressed,
          child: SvgPicture.asset(
           icon,
          ),
        )
      ],
    );
  }
}
