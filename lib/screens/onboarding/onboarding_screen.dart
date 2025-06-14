import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:tap_n_repeat/navigation_service.dart';
import 'package:ui_kit/gen/assets.gen.dart';
import 'package:ui_kit/ui_kit.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
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
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'TAP\'N\'REPEAT',
                      style: AppTextStyles.roboto30w700,
                    ),
                    const Gap(23.0),
                    Text(
                      'WELCOME!',
                      style: AppTextStyles.roboto26w400,
                    ),
                    const Gap(34.0),
                    Row(
                      children: [
                        Expanded(
                          child: CustomGradientButton(
                            title: 'Get Started',
                            onTap: () => context.goNamed(AppRoutes.home.name),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
