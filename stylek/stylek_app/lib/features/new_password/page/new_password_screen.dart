import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylek_app/core/routes/routes.dart';
import 'package:stylek_app/core/styles/colors.dart';
import 'package:stylek_app/core/widgets/main_button.dart';
import 'package:stylek_app/features/new_password/widgets/new_password_fields.dart';
import 'package:stylek_app/features/new_password/widgets/new_password_header.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _obscureNewPassword = true;
  bool _obscureConfirmPassword = true;

  @override
  void dispose() {
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  String? _validatePassword() {
    if (_newPasswordController.text.isEmpty) {
      return 'Please enter your password';
    }
    if (_newPasswordController.text.length < 6) {
      return 'Password must be at least 6 characters';
    }
    if (_confirmPasswordController.text != _newPasswordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  void _submit() {
    final error = _validatePassword();
    if (error != null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(error)));
      return;
    }
    context.go(Routes.login);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: AppColor.backgroundGradientColors,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const NewPasswordHeader(),
                      NewPasswordFields(
                        newPasswordController: _newPasswordController,
                        confirmPasswordController: _confirmPasswordController,
                        obscureNewPassword: _obscureNewPassword,
                        obscureConfirmPassword: _obscureConfirmPassword,
                        onToggleObscureNewPassword: () => setState(
                          () => _obscureNewPassword = !_obscureNewPassword,
                        ),
                        onToggleObscureConfirmPassword: () => setState(
                          () => _obscureConfirmPassword =
                              !_obscureConfirmPassword,
                        ),
                      ),
                      const SizedBox(height: 40),
                      MainButton(text: 'Next', onPressed: _submit),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
