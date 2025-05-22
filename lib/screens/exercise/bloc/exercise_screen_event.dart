abstract class ExerciseScreenEvent {}

class ExerciseScreenInitEvent extends ExerciseScreenEvent {
  ExerciseScreenInitEvent({
    required this.id,
  });

  final String id;
}
