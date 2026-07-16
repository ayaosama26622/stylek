import 'package:flutter/material.dart';
import 'package:stylek_app/core/constants/image_app.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset(AppImages.logo, width: 200));
  }
}
