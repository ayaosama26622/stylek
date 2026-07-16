import 'package:flutter/material.dart';
import 'package:stylek_app/core/styles/colors.dart';
import 'package:stylek_app/core/widgets/custom_text_from_field.dart';
import 'package:stylek_app/core/widgets/labeled_field.dart';

class NewPasswordFields extends StatelessWidget {
  const NewPasswordFields({
    super.key,
    required this.newPasswordController,
    required this.confirmPasswordController,
    required this.obscureNewPassword,
    required this.obscureConfirmPassword,
    required this.onToggleObscureNewPassword,
    required this.onToggleObscureConfirmPassword,
  });

  final TextEditingController newPasswordController;
  final TextEditingController confirmPasswordController;
  final bool obscureNewPassword;
  final bool obscureConfirmPassword;
  final VoidCallback onToggleObscureNewPassword;
  final VoidCallback onToggleObscureConfirmPassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(height: 30),
        LabeledField(
          label: 'New password',
          child: CustomTextFormField(
            controller: newPasswordController,
            hintText: 'Enter your password',
            obscureText: obscureNewPassword,
            textAlign: TextAlign.left,
            prefixIcon: const Icon(
              Icons.lock_outline,
              color: AppColor.greyColor,
              size: 20,
            ),
            suffixIcon: IconButton(
              onPressed: onToggleObscureNewPassword,
              icon: Icon(
                obscureNewPassword
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                color: AppColor.greyColor,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        LabeledField(
          label: 'Confirm password',
          child: CustomTextFormField(
            controller: confirmPasswordController,
            hintText: 'Confirm your password',
            obscureText: obscureConfirmPassword,
            textAlign: TextAlign.left,
            prefixIcon: const Icon(
              Icons.lock_outline,
              color: AppColor.greyColor,
              size: 20,
            ),
            suffixIcon: IconButton(
              onPressed: onToggleObscureConfirmPassword,
              icon: Icon(
                obscureConfirmPassword
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                color: AppColor.greyColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
