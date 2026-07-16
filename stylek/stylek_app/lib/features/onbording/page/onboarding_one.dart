import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:stylek_app/core/constants/image_app.dart';
import 'package:stylek_app/features/onbording/widgets/onboarding_page_body.dart';

class OnboardingOne extends StatelessWidget {
  const OnboardingOne({super.key, required this.onNext, required this.onSkip});

  final VoidCallback onNext;
  final VoidCallback onSkip;

  @override
  Widget build(BuildContext context) {
    return OnboardingPageBody(
      backgroundColor: const Color(0xFFBEE6F8),
      image: AppImages.header,
      title: 'Glow Beyond Beauty',
      subtitle:
          'Explore skincare and makeup essentials crafted to nourish your skin and enhance your natural elegance.',
      activeDotIndex: 2,
      onSkip: onSkip,
      onAction: onNext,
      progressSweep: -0.66 * math.pi,
    );
  }
}
