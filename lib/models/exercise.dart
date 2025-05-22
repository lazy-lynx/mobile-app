class ExerciseModel {
  const ExerciseModel({
    required this.id,
    required this.name,
    required this.description,
  });

  final String id;
  final String name;
  final String description;

  static ExerciseModel empty = ExerciseModel(
    id: '',
    name: '',
    description: '',
  );

  static ExerciseModel fromJson(Map<String, dynamic> json) {
    return ExerciseModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
    );
  }
}
