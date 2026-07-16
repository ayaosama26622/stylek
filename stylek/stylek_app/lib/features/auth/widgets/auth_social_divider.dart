import 'package:flutter/material.dart';
import 'package:stylek_app/core/styles/colors.dart';

class AuthSocialDivider extends StatelessWidget {
  const AuthSocialDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Divider(color: AppColor.greyColor, thickness: 1)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            'Or Continue With',
            style: TextStyle(
              color: AppColor.greyColor,
              fontWeight: FontWeight.w700,
              fontSize: 14,
            ),
          ),
        ),
        Expanded(child: Divider(color: AppColor.greyColor, thickness: 1)),
      ],
    );
  }
}
