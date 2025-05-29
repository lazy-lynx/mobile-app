import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:tap_n_repeat/models/exercise.dart';
import 'package:tap_n_repeat/screens/exercise/bloc/exercise_screen_event.dart';
import 'package:tap_n_repeat/screens/exercise/bloc/exercise_screen_state.dart';

class ExerciseScreenBloc extends Bloc<ExerciseScreenEvent, ExerciseScreenState> {
  ExerciseScreenBloc()
      : super(
          ExerciseScreenState(
            exercise: ExerciseModel.empty,
          ),
        ) {
    on<ExerciseScreenInitEvent>(_onInit);
  }

  Future<void> _onInit(
    ExerciseScreenInitEvent event,
    Emitter<ExerciseScreenState> emit,
  ) async {
    final exercise = await loadExerciseFromAsset(
      id: event.id,
    );
    emit(
      ExerciseScreenState(
        exercise: exercise,
      ),
    );
  }

  Future<ExerciseModel> loadExerciseFromAsset({
    required final String id,
  }) async {
    final jsonString = await rootBundle.loadString('assets/data.json');
    final List<dynamic> jsonList = json.decode(jsonString);
    final List<ExerciseModel> exercises = jsonList.map((json) => ExerciseModel.fromJson(json)).toList();
    return exercises.firstWhere(
      (e) => e.id == id,
    );
  }
}
