import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylek_app/core/constants/image_app.dart';
import 'package:stylek_app/core/routes/routes.dart';
import 'package:stylek_app/core/widgets/gradient_scaffold.dart';
import 'package:stylek_app/core/widgets/main_button.dart';
import 'package:stylek_app/features/auth/widgets/auth_hero_header.dart';
import 'package:stylek_app/features/auth/widgets/auth_social_buttons.dart';
import 'package:stylek_app/features/auth/widgets/auth_social_divider.dart';
import 'package:stylek_app/features/auth/widgets/auth_toggle_capsule.dart';
import 'package:stylek_app/features/auth/widgets/forgot_password_link.dart';
import 'package:stylek_app/features/auth/widgets/login_fields.dart';
import 'package:stylek_app/features/auth/widgets/signup_prompt.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String? _userNameError;
  String? _emailError;
  String? _passwordError;
  bool _obscurePassword = true;

  @override
  void dispose() {
    _userNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  bool _validateFields() {
    setState(() {
      _userNameError = _userNameController.text.isEmpty
          ? 'Please enter your username'
          : null;

      if (_emailController.text.isEmpty) {
        _emailError = 'Please enter your email';
      } else if (!_emailController.text.contains('@')) {
        _emailError = 'Please enter a valid email';
      } else {
        _emailError = null;
      }

      if (_passwordController.text.isEmpty) {
        _passwordError = 'Please enter your password';
      } else if (_passwordController.text.length < 6) {
        _passwordError = 'Password must be at least 6 characters';
      } else {
        _passwordError = null;
      }
    });

    return _userNameError == null &&
        _emailError == null &&
        _passwordError == null;
  }

  void _signIn() {
    if (!_validateFields()) return;
    context.go(Routes.home);
  }

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      physics: const BouncingScrollPhysics(),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            const AuthHeroHeader(
              title: 'SIGN IN',
              imagePath: AppImages.signin,
              fallbackIcon: Icons.image,
              imageHeight: 180,
              fallbackIconSize: 100,
            ),
            const SizedBox(height: 25),
            const AuthToggleCapsule(),
            const SizedBox(height: 40),
            LoginFields(
              userNameController: _userNameController,
              emailController: _emailController,
              passwordController: _passwordController,
              userNameError: _userNameError,
              emailError: _emailError,
              passwordError: _passwordError,
              obscurePassword: _obscurePassword,
              onToggleObscurePassword: () =>
                  setState(() => _obscurePassword = !_obscurePassword),
            ),
            const SizedBox(height: 12),
            ForgotPasswordLink(
              onTap: () => context.go(Routes.forgotPassword),
            ),
            const SizedBox(height: 40),
            MainButton(text: 'SIGN IN', onPressed: _signIn),
            const SizedBox(height: 20),
            const AuthSocialDivider(),
            const SizedBox(height: 16),
            const AuthSocialButtons(),
            const SizedBox(height: 20),
            SignUpPrompt(onTap: () => context.go(Routes.signup)),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
