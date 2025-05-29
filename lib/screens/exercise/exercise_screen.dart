import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:tap_n_repeat/screens/exercise/bloc/exercise_screen_bloc.dart';
import 'package:tap_n_repeat/screens/exercise/bloc/exercise_screen_event.dart';
import 'package:tap_n_repeat/screens/exercise/bloc/exercise_screen_state.dart';

class ExerciseScreen extends StatelessWidget {
  const ExerciseScreen({
    required this.id,
    super.key,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ExerciseScreenBloc()
        ..add(
          ExerciseScreenInitEvent(id: id),
        ),
      child: ExerciseScreenView(),
    );
  }
}

class ExerciseScreenView extends StatelessWidget {
  const ExerciseScreenView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExerciseScreenBloc, ExerciseScreenState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              state.exercise.name,
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            Gap(10.0),
            Text(
              state.exercise.description,
            ),
          ],
        );
      },
    );
  }
}
