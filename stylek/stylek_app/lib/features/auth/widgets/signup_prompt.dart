import 'package:flutter/material.dart';
import 'package:stylek_app/core/styles/colors.dart';

class SignUpPrompt extends StatelessWidget {
  const SignUpPrompt({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account? ",
          style: TextStyle(
            color: AppColor.darkColor,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: const Text(
            'sign up',
            style: TextStyle(
              color: AppColor.errorColor,
              fontWeight: FontWeight.w800,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
