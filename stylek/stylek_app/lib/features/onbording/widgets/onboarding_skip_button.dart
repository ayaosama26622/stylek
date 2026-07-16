import 'package:flutter/material.dart';

class OnboardingSkipButton extends StatelessWidget {
  const OnboardingSkipButton({super.key, required this.onSkip});

  final VoidCallback onSkip;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: onSkip,
        child: const Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            'Skip',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
