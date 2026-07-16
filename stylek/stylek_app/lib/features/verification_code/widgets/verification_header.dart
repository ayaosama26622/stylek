import 'package:flutter/material.dart';
import 'package:stylek_app/core/constants/image_app.dart';
import 'package:stylek_app/core/styles/colors.dart';

class VerificationHeader extends StatelessWidget {
  const VerificationHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Center(
          child: Text(
            'Verification code',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: AppColor.darkColor,
              letterSpacing: 0.5,
            ),
          ),
        ),
        const SizedBox(height: 35),
        Center(
          child: Image.asset(
            AppImages.verificationCode,
            height: 210,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(
                Icons.mark_email_read_outlined,
                size: 110,
                color: AppColor.greyColor,
              );
            },
          ),
        ),
        const SizedBox(height: 35),
        const Text(
          'Verification\ncode',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
            color: AppColor.darkColor,
            height: 1.2,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          'Please enter the verification codes sent to your\nphone number or email',
          style: TextStyle(
            color: AppColor.darkColor.withValues(alpha: 0.6),
            fontSize: 16,
            fontWeight: FontWeight.w500,
            height: 1.4,
          ),
        ),
        const SizedBox(height: 40),
        const Center(
          child: Text(
            '+01123456778',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w900,
              color: AppColor.darkColor,
            ),
          ),
        ),
      ],
    );
  }
}
