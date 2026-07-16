import 'package:flutter/material.dart';
import 'package:stylek_app/core/styles/colors.dart';

class CustomGradientBorder extends StatelessWidget {
  const CustomGradientBorder({
    super.key,
    required this.child,
    required this.borderRadius,
    this.strokeWidth = 2,
  });

  final Widget child;
  final BorderRadius borderRadius;
  final double strokeWidth;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _GradientPainter(
        borderRadius: borderRadius,
        strokeWidth: strokeWidth,
      ),
      child: ClipRRect(borderRadius: borderRadius, child: child),
    );
  }
}

class _GradientPainter extends CustomPainter {
  _GradientPainter({required this.borderRadius, required this.strokeWidth});

  final BorderRadius borderRadius;
  final double strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    final paint = Paint()
      ..shader = const LinearGradient(
        colors: AppColor.gradientColors,
      ).createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    final rrect = borderRadius.toRRect(rect);
    canvas.drawRRect(rrect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
