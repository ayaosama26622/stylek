import 'package:flutter/material.dart';
import 'package:stylek_app/core/widgets/main_button.dart';
import 'package:stylek_app/features/auth/widgets/auth_social_buttons.dart';
import 'package:stylek_app/features/auth/widgets/auth_social_divider.dart';
import 'package:stylek_app/features/auth/widgets/signin_prompt.dart';


class RegisterBottomActions extends StatelessWidget {
  const RegisterBottomActions({
    super.key,
    required this.onSignUp,
    required this.onSignInTap,
  });

  final VoidCallback onSignUp;
  final VoidCallback onSignInTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        MainButton(text: 'SIGN UP', onPressed: onSignUp),
        const SizedBox(height: 40),
        const AuthSocialDivider(),
        const SizedBox(height: 20),
        const AuthSocialButtons(
          spacing: 14,
          googleFontSize: 18,
          appleIconSize: 20,
        ),
        const SizedBox(height: 20),
        SignInPrompt(onTap: onSignInTap),
        const SizedBox(height: 16),
      ],
    );
  }
}
