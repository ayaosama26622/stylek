import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylek_app/core/constants/image_app.dart';
import 'package:stylek_app/core/routes/routes.dart';
import 'package:stylek_app/core/widgets/gradient_scaffold.dart';
import 'package:stylek_app/features/auth/widgets/auth_hero_header.dart';
import 'package:stylek_app/features/auth/widgets/auth_toggle_capsule.dart';
import 'package:stylek_app/features/auth/widgets/register_bottom_actions.dart';
import 'package:stylek_app/features/auth/widgets/register_fields.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  String? _userNameError;
  String? _emailError;
  String? _passwordError;
  String? _confirmPasswordError;
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  void dispose() {
    _userNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
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

      _passwordError = _passwordController.text.isEmpty
          ? 'Please enter your password'
          : null;

      if (_confirmPasswordController.text.isEmpty) {
        _confirmPasswordError = 'Please confirm your password';
      } else if (_confirmPasswordController.text != _passwordController.text) {
        _confirmPasswordError = 'Passwords do not match';
      } else {
        _confirmPasswordError = null;
      }
    });

    return _userNameError == null &&
        _emailError == null &&
        _passwordError == null &&
        _confirmPasswordError == null;
  }

  void _signUp() {
    if (!_validateFields()) return;
    context.go(Routes.login);
  }

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      fillHeight: true,
      horizontalPadding: 20,
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 24),
                const AuthHeroHeader(
                  title: 'SIGN UP',
                  imagePath: AppImages.signup,
                  fallbackIcon: Icons.image,
                  imageHeight: 140,
                  titleFontSize: 26,
                  fallbackIconSize: 80,
                ),
                const SizedBox(height: 20),
                const AuthToggleCapsule(),
                const SizedBox(height: 40),
                RegisterFields(
                  userNameController: _userNameController,
                  emailController: _emailController,
                  passwordController: _passwordController,
                  confirmPasswordController: _confirmPasswordController,
                  userNameError: _userNameError,
                  emailError: _emailError,
                  passwordError: _passwordError,
                  confirmPasswordError: _confirmPasswordError,
                  obscurePassword: _obscurePassword,
                  obscureConfirmPassword: _obscureConfirmPassword,
                  onToggleObscurePassword: () =>
                      setState(() => _obscurePassword = !_obscurePassword),
                  onToggleObscureConfirmPassword: () => setState(
                    () => _obscureConfirmPassword = !_obscureConfirmPassword,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            RegisterBottomActions(
              onSignUp: _signUp,
              onSignInTap: () => context.go(Routes.login),
            ),
          ],
        ),
      ),
    );
  }
}
