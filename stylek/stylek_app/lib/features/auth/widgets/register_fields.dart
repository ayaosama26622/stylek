import 'package:flutter/material.dart';
import 'package:stylek_app/core/styles/colors.dart';
import 'package:stylek_app/core/widgets/custom_text_from_field.dart';
import 'package:stylek_app/core/widgets/labeled_field.dart';

class RegisterFields extends StatelessWidget {
  const RegisterFields({
    super.key,
    required this.userNameController,
    required this.emailController,
    required this.passwordController,
    required this.confirmPasswordController,
    required this.userNameError,
    required this.emailError,
    required this.passwordError,
    required this.confirmPasswordError,
    required this.obscurePassword,
    required this.obscureConfirmPassword,
    required this.onToggleObscurePassword,
    required this.onToggleObscureConfirmPassword,
  });

  final TextEditingController userNameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final String? userNameError;
  final String? emailError;
  final String? passwordError;
  final String? confirmPasswordError;
  final bool obscurePassword;
  final bool obscureConfirmPassword;
  final VoidCallback onToggleObscurePassword;
  final VoidCallback onToggleObscureConfirmPassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LabeledField(
          label: 'User Name',
          labelFontSize: 14,
          error: userNameError,
          child: CustomTextFormField(
            controller: userNameController,
            hintText: 'Enter your User Name',
            prefixIcon: const Icon(
              Icons.person_outline,
              color: AppColor.greyColor,
            ),
          ),
        ),
        const SizedBox(height: 16),
        LabeledField(
          label: 'Email',
          labelFontSize: 14,
          error: emailError,
          child: CustomTextFormField(
            controller: emailController,
            hintText: 'Enter your email',
            prefixIcon: const Icon(
              Icons.mail_outline,
              color: AppColor.greyColor,
            ),
          ),
        ),
        const SizedBox(height: 16),
        LabeledField(
          label: 'Password',
          labelFontSize: 14,
          error: passwordError,
          child: CustomTextFormField(
            controller: passwordController,
            hintText: 'Enter your password',
            obscureText: obscurePassword,
            prefixIcon: const Icon(
              Icons.lock_outline,
              color: AppColor.greyColor,
            ),
            suffixIcon: IconButton(
              onPressed: onToggleObscurePassword,
              icon: Icon(
                obscurePassword
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                color: AppColor.greyColor,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        LabeledField(
          label: 'Confirm Password',
          labelFontSize: 14,
          error: confirmPasswordError,
          child: CustomTextFormField(
            controller: confirmPasswordController,
            hintText: 'Confirm your password',
            obscureText: obscureConfirmPassword,
            prefixIcon: const Icon(
              Icons.lock_outline,
              color: AppColor.greyColor,
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
