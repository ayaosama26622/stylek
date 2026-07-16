import 'package:flutter/material.dart';
import 'package:stylek_app/core/constants/image_app.dart';
import 'package:stylek_app/features/onbording/widgets/onboarding_page_body.dart';

class OnboardingThree extends StatelessWidget {
  const OnboardingThree({
    super.key,
    required this.onReady,
    required this.onSkip,
  });

  final VoidCallback onReady;
  final VoidCallback onSkip;

  @override
  Widget build(BuildContext context) {
    return OnboardingPageBody(
      backgroundColor: const Color(0xFFEFE3E3),
      image: AppImages.header3,
      title: 'Elegance In Every Detail',
      subtitle:
          'Shop premium accessories designed to complete your perfect look.',
      activeDotIndex: 0,
      onSkip: onSkip,
      onAction: onReady,
      progressSweep: 0,
      actionLabel: 'Ready',
    );
  }
}
