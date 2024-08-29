import 'package:flutter/material.dart';
import 'widgets/progrees/progress_view_body.dart';

class ProgressView extends StatelessWidget {
  const ProgressView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProgressViewBody(),
    );
  }
}
