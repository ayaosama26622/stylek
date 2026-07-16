import 'package:flutter/material.dart';
import 'package:stylek_app/core/styles/colors.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.bgColor = AppColor.primaryPink,
    this.borderColor,
    this.minWidth = double.infinity,
    this.minHeight = 56,
    this.textColor = AppColor.darkColor,
  });

  final String text;
  final VoidCallback onPressed;
  final Color bgColor;
  final Color? borderColor;
  final double minWidth;
  final double minHeight;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    final bool useGradient = bgColor == AppColor.primaryPink;

    return Container(
      width: minWidth,
      height: minHeight,
      decoration: useGradient
          ? BoxDecoration(
              gradient: const LinearGradient(
                colors: AppColor.gradientColors,
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(8),
            )
          : null,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: useGradient ? Colors.transparent : bgColor,
          shadowColor: useGradient ? Colors.transparent : null,
          minimumSize: Size(minWidth, minHeight),
          maximumSize: Size(minWidth, minHeight),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          side: borderColor != null ? BorderSide(color: borderColor!) : null,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
