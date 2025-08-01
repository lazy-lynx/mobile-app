import 'package:circular_countdown/circular_countdown.dart';
import 'package:flutter/widgets.dart';

class CircularCountdownTimer extends StatelessWidget {
  const CircularCountdownTimer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircularCountdown(
      countdownTotal: 10,
      countdownRemaining: 7,
    );
  }
}
