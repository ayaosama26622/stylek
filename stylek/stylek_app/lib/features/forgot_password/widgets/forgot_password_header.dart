import 'package:flutter/material.dart';
import 'package:stylek_app/core/constants/image_app.dart';
import 'package:stylek_app/core/styles/colors.dart';
import 'package:stylek_app/features/forgot_password/widgets/forgot_password_description.dart';

class ForgotPasswordHeader extends StatelessWidget {
  const ForgotPasswordHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Center(
          child: Text(
            'FORGOT PASSWORD',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: AppColor.darkColor,
              letterSpacing: 0.5,
            ),
          ),
        ),
        const SizedBox(height: 40),
        Center(
          child: Image.asset(
            AppImages.forgotPassword,
            height: 210,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(
                Icons.lock_reset,
                size: 110,
                color: AppColor.greyColor,
              );
            },
          ),
        ),
        const SizedBox(height: 35),
        const Text(
          'Forgot\nPassword ?',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
            color: AppColor.darkColor,
            height: 1.2,
          ),
        ),
        const SizedBox(height: 16),
        const ForgotPasswordDescription(),
      ],
    );
  }
}
