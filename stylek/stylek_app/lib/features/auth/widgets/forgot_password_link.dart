import 'package:flutter/material.dart';
import 'package:stylek_app/core/styles/colors.dart';

class ForgotPasswordLink extends StatelessWidget {
  const ForgotPasswordLink({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: onTap,
        child: const Text(
          'Forgot password ?',
          style: TextStyle(
            color: AppColor.darkColor,
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
