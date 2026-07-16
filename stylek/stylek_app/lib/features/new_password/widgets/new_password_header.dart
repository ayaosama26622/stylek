import 'package:flutter/material.dart';
import 'package:stylek_app/core/constants/image_app.dart';
import 'package:stylek_app/core/styles/colors.dart';
import 'package:stylek_app/features/new_password/widgets/new_password_description.dart';

class NewPasswordHeader extends StatelessWidget {
  const NewPasswordHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(height: 30),
        const Center(
          child: Text(
            'NEW PASSWORD',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: AppColor.darkColor,
              letterSpacing: 0.5,
            ),
          ),
        ),
        const SizedBox(height: 30),
        Center(
          child: Image.asset(
            AppImages.newPassword,
            height: 160,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 30),
        const Text(
          'New\nPassword',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
            color: AppColor.darkColor,
            height: 1.1,
          ),
        ),
        const SizedBox(height: 16),
        const NewPasswordDescription(),
      ],
    );
  }
}
