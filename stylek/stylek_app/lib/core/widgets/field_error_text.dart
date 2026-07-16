import 'package:flutter/material.dart';
import 'package:stylek_app/core/styles/colors.dart';

class FieldErrorText extends StatelessWidget {
  const FieldErrorText({super.key, required this.error});

  final String? error;

  @override
  Widget build(BuildContext context) {
    if (error == null) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.only(top: 6, left: 8),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          error!,
          style: const TextStyle(
            color: AppColor.errorColor,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
