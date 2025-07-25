import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/plank.freezed.dart';
part 'gen/plank.g.dart';

@freezed
class Plank with _$Plank {
  const factory Plank({
    required String id,
    required String title,
    required String image,
    required String level,
    required int duration,
    required String description,
  }) = _Plank;

  factory Plank.fromJson(Map<String, dynamic> json) => _$PlankFromJson(json);
} 