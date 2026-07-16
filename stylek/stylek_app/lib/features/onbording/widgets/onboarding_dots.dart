import 'package:flutter/material.dart';


class OnboardingDots extends StatelessWidget {
  const OnboardingDots({super.key, required this.activeIndex});

  final int activeIndex;

  static const int _dotCount = 3;
  static const double _spacing = 6;
  static const double _activeWidth = 18;
  static const double _inactiveWidth = 14;
  static const double _height = 4;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (var index = 0; index < _dotCount; index++) ...[
          if (index != 0) const SizedBox(width: _spacing),
          _Dot(isActive: index == activeIndex),
        ],
      ],
    );
  }
}

class _Dot extends StatelessWidget {
  const _Dot({required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isActive
          ? OnboardingDots._activeWidth
          : OnboardingDots._inactiveWidth,
      height: OnboardingDots._height,
      decoration: BoxDecoration(
        color: isActive ? Colors.black : const Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
