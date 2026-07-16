import 'package:flutter/material.dart';
import 'package:stylek_app/core/styles/colors.dart';
import 'package:stylek_app/core/widgets/custom_gradient_border.dart';
import 'package:stylek_app/core/widgets/field_error_text.dart';


class LabeledField extends StatelessWidget {
  const LabeledField({
    super.key,
    required this.label,
    required this.child,
    this.error,
    this.labelFontSize = 16,
    this.bottomSpacing = 0,
  });

  final String label;
  final Widget child;
  final String? error;
  final double labelFontSize;
  final double bottomSpacing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottomSpacing),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              label,
              style: TextStyle(
                fontSize: labelFontSize,
                fontWeight: FontWeight.w700,
                color: AppColor.darkColor,
              ),
            ),
          ),
          const SizedBox(height: 8),
          CustomGradientBorder(
            borderRadius: BorderRadius.circular(8),
            child: child,
          ),
          FieldErrorText(error: error),
        ],
      ),
    );
  }
}
