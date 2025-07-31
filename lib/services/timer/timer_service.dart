import 'dart:async';

import 'package:planks_and_plants/services/timer/i_timer_service.dart';

class SimpleTimerService implements ITimerService {
  final _controller = StreamController<int>.broadcast();
  Timer? _timer;
  int _current = 0;
  int _duration = 0;
  bool _isPaused = false;

  @override
  Stream<int> get ticks => _controller.stream;

  @override
  void start({required int duration}) {
    _duration = duration;
    _current = duration;
    _isPaused = false;
    _tick();
  }

  void _tick() {
    _timer?.cancel();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_isPaused) return;

      _current--;
      _controller.add(_current);

      if (_current <= 0) {
        timer.cancel();
      }
    });
  }

  @override
  void pause() {
    _isPaused = true;
  }

  @override
  void resume() {
    _isPaused = false;
  }

  @override
  void reset() {
    _timer?.cancel();
    _controller.add(_duration);
    _current = _duration;
  }
}
