import 'package:fitness_master/features/exercises/presentation/views/widgets/exercises/exercises_view_body.dart';
import 'package:flutter/material.dart';

class ExercisesView extends StatelessWidget {
  const ExercisesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ExercisesViewBody(),
    );
  }
}
