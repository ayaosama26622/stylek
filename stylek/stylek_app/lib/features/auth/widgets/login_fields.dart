import 'package:flutter/material.dart';
import 'package:stylek_app/core/styles/colors.dart';
import 'package:stylek_app/core/widgets/custom_text_from_field.dart';
import 'package:stylek_app/core/widgets/labeled_field.dart';

class LoginFields extends StatelessWidget {
  const LoginFields({
    super.key,
    required this.userNameController,
    required this.emailController,
    required this.passwordController,
    required this.userNameError,
    required this.emailError,
    required this.passwordError,
    required this.obscurePassword,
    required this.onToggleObscurePassword,
  });

  final TextEditingController userNameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final String? userNameError;
  final String? emailError;
  final String? passwordError;
  final bool obscurePassword;
  final VoidCallback onToggleObscurePassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LabeledField(
          label: 'User Name',
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
        const SizedBox(height: 12),
        LabeledField(
          label: 'Password',
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
      ],
    );
  }
}
