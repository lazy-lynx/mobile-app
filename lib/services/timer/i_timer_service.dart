abstract interface class ITimerService {
  Stream<int> get ticks;
  void start({required int duration});
  void pause();
  void resume();
  void reset();
}
