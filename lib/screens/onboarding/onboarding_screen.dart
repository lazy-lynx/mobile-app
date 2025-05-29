import 'package:flutter/material.dart';
import 'package:ui_kit/gen/assets.gen.dart';
import 'package:ui_kit/ui_kit.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Column(
          children: [
            Flexible(
              flex: 3,
              child: SizedBox.expand(
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Image.asset(
                    Assets.images.onboarding.path,
                    package: 'ui_kit',
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Column(
                children: [
                  Text(
                    'TAP\'N\'REPEAT',
                  ),
                  Text(
                    'WELCOME!',
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Get Started'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
