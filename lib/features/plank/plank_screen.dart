import 'package:flutter/material.dart';
import 'package:planks_and_plants/models/plank.dart';
import 'package:ui_kit/widgets/circular_countdown_timer/circular_countdown_timer.dart';

class PlankScreenArgs {
  const PlankScreenArgs({
    required this.plank,
  });

  final Plank plank;

  Map<String, dynamic> toJson() => {
        'plank': plank.toJson(),
      };
}

class PlankScreen extends StatelessWidget {
  const PlankScreen({
    required this.args,
    super.key,
  });

  final PlankScreenArgs args;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularCountdownTimer(),
      ),
    );
  }
}
