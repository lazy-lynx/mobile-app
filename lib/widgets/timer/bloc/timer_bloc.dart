import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planks_and_plants/widgets/timer/bloc/timer_event.dart';
import 'package:planks_and_plants/widgets/timer/bloc/timer_state.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  TimerBloc() : super(InitialTimerState());
}
