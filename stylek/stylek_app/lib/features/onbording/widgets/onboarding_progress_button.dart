import 'dart:math' as math;

import 'package:flutter/material.dart';

class OnboardingProgressButton extends StatelessWidget {
  const OnboardingProgressButton({
    super.key,
    required this.onTap,
    required this.progressSweep,
    this.label,
  });

  final VoidCallback onTap;
  final double progressSweep;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: label == null
          ? CustomPaint(
              painter: OnboardingProgressPainter(progressSweep),
              child: Container(
                width: 86,
                height: 86,
                alignment: Alignment.center,
                child: Container(
                  width: 58,
                  height: 58,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
              ),
            )
          : Container(
              width: 86,
              height: 86,
              decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Text(
                label!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
    );
  }
}

class OnboardingProgressPainter extends CustomPainter {
  const OnboardingProgressPainter(this.sweep);

  final double sweep;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = (size.width / 2) - 1.5;
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1.5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -math.pi / 2,
      sweep,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant OnboardingProgressPainter oldDelegate) {
    return oldDelegate.sweep != sweep;
  }
}
