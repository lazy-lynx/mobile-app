sealed class TimerState {}

class InitialTimerState extends TimerState {}

class RunningTimerState extends TimerState {}

class PausedTimerState extends TimerState {}

class CompletedTimerState extends TimerState {}
