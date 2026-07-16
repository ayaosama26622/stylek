import 'package:flutter/material.dart';
import 'package:stylek_app/features/onbording/widgets/onboarding_dots.dart';
import 'package:stylek_app/features/onbording/widgets/onboarding_progress_button.dart';
import 'package:stylek_app/features/onbording/widgets/onboarding_skip_button.dart';

class OnboardingPageBody extends StatelessWidget {
  const OnboardingPageBody({
    super.key,
    required this.backgroundColor,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.activeDotIndex,
    required this.onSkip,
    required this.onAction,
    required this.progressSweep,
    this.actionLabel,
  });

  final Color backgroundColor;
  final String image;
  final String title;
  final String subtitle;
  final int activeDotIndex;
  final VoidCallback onSkip;
  final VoidCallback onAction;
  final double progressSweep;
  final String? actionLabel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 65,
                child: Image.asset(
                  image,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const Expanded(flex: 35, child: SizedBox()),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                top: 40,
                left: 32,
                right: 32,
                bottom: 40,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    subtitle,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xFF8F8F8F),
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 35),
                  OnboardingDots(activeIndex: activeDotIndex),
                  const SizedBox(height: 35),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      OnboardingProgressButton(
                        onTap: onAction,
                        progressSweep: progressSweep,
                        label: actionLabel,
                      ),
                      OnboardingSkipButton(onSkip: onSkip),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
