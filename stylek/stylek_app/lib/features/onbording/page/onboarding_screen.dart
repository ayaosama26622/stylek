import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylek_app/core/routes/routes.dart';
import 'package:stylek_app/features/onbording/page/onboarding_one.dart';
import 'package:stylek_app/features/onbording/page/onboarding_three.dart';
import 'package:stylek_app/features/onbording/page/onboarding_two.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();

  void _nextPage() {
    _controller.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  void _completeOnboarding() {
    context.go(Routes.login);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        OnboardingOne(onNext: _nextPage, onSkip: _completeOnboarding),
        OnboardingTwo(onNext: _nextPage, onSkip: _completeOnboarding),
        OnboardingThree(
          onReady: _completeOnboarding,
          onSkip: _completeOnboarding,
        ),
      ],
    );
  }
}
