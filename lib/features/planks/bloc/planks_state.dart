import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../models/plank.dart';

part 'gen/planks_state.freezed.dart';

enum PlanksScreenState {
  initial,
  loading,
  loaded,
  error,
}

@freezed
class PlanksState with _$PlanksState {
  const factory PlanksState({
    @Default(PlanksScreenState.initial) PlanksScreenState screenState,
    @Default([]) List<Plank> planks,
    @Default('') String errorMessage,
  }) = _PlanksState;
}
