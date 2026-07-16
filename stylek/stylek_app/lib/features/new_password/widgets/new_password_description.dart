import 'package:flutter/material.dart';
import 'package:stylek_app/core/styles/colors.dart';

class NewPasswordDescription extends StatelessWidget {
  const NewPasswordDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Your password has been reset. please create a new password.',
      textAlign: TextAlign.left,
      style: TextStyle(
        color: AppColor.darkColor.withValues(alpha: 0.7),
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
