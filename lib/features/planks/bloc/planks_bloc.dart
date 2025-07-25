import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planks_and_plants/features/planks/bloc/planks_event.dart';
import 'package:planks_and_plants/features/planks/bloc/planks_state.dart';
import 'package:planks_and_plants/models/plank.dart';

class PlanksBloc extends Bloc<PlanksEvent, PlanksState> {
  PlanksBloc() : super(PlanksState()) {
    on<PlanksInitEvent>((event, emit) => _onInit(event, emit));
    add(PlanksInitEvent());
  }

  Future<void> _onInit(PlanksInitEvent event, Emitter<PlanksState> emit) async {
    emit(state.copyWith(screenState: PlanksScreenState.loading));
    final planks = await loadPlanksFromAsset();
    emit(state.copyWith(
      screenState: PlanksScreenState.loaded,
      planks: planks,
    ));
  }

  Future<List<Plank>> loadPlanksFromAsset() async {
    final jsonString = await rootBundle.loadString('assets/planks_db.json');
    final List<dynamic> jsonList = json.decode(jsonString);
    return jsonList.map((json) => Plank.fromJson(json)).toList();
  }
}
