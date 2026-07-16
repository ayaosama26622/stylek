import 'package:flutter/material.dart';
import 'package:stylek_app/core/styles/colors.dart';

class ResendCodeButton extends StatelessWidget {
  const ResendCodeButton({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          'Resend Code',
          style: TextStyle(
            color: AppColor.darkColor.withValues(alpha: 0.5),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
