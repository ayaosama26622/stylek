import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:stylek_app/core/constants/image_app.dart';
import 'package:stylek_app/features/onbording/widgets/onboarding_page_body.dart';

class OnboardingTwo extends StatelessWidget {
  const OnboardingTwo({super.key, required this.onNext, required this.onSkip});

  final VoidCallback onNext;
  final VoidCallback onSkip;

  @override
  Widget build(BuildContext context) {
    return OnboardingPageBody(
      backgroundColor: const Color(0xFFFBE9EE),
      image: AppImages.header2,
      title: 'Style Your Everyday',
      subtitle:
          'Explore trendy outfits and express your unique fashion vibe crafted to elevate your daily elegance.',
      activeDotIndex: 1,
      onSkip: onSkip,
      onAction: onNext,
      progressSweep: -1.33 * math.pi,
    );
  }
}
