import 'package:flutter/material.dart';
import 'package:stylek_app/core/styles/colors.dart';

class SignInPrompt extends StatelessWidget {
  const SignInPrompt({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Have you already? ',
          style: TextStyle(
            color: AppColor.darkColor,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: const Text(
            'sign in',
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
