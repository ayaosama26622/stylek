import 'package:flutter/material.dart';
import 'package:stylek_app/core/styles/colors.dart';

class ForgotPasswordDescription extends StatelessWidget {
  const ForgotPasswordDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Please enter email or phone number associated\nwith your account.',
      style: TextStyle(
        color: AppColor.darkColor.withValues(alpha: 0.6),
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 1.4,
      ),
    );
  }
}
