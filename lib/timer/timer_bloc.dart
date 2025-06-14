import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_n_repeat/timer/timer_event.dart';
import 'package:tap_n_repeat/timer/timer_state.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  TimerBloc() : super(InitialTimerState());
}
