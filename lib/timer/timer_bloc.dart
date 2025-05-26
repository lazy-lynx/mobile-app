import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/timer/timer_event.dart';
import 'package:my_app/timer/timer_state.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  TimerBloc() : super(InitialTimerState());
}
