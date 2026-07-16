import 'package:flutter/material.dart';
import 'package:stylek_app/core/styles/colors.dart';
import 'package:stylek_app/features/auth/widgets/social_card.dart';

class AuthSocialButtons extends StatelessWidget {
  const AuthSocialButtons({
    super.key,
    this.spacing = 16,
    this.googleFontSize = 20,
    this.appleIconSize = 22,
  });

  final double spacing;
  final double googleFontSize;
  final double appleIconSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SocialCard(
            icon: Text(
              'G',
              style: TextStyle(
                color: AppColor.errorColor,
                fontSize: googleFontSize,
                fontWeight: FontWeight.w900,
              ),
            ),
            label: 'Enter your email Google',
            onTap: () {},
          ),
        ),
        SizedBox(width: spacing),
        Expanded(
          child: SocialCard(
            icon: Icon(
              Icons.apple,
              color: AppColor.darkColor,
              size: appleIconSize,
            ),
            label: 'Enter your email Apple',
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
