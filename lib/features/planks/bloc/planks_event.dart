import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/planks_event.freezed.dart';

@freezed
class PlanksEvent with _$PlanksEvent {
  const factory PlanksEvent.init() = PlanksInitEvent;
}