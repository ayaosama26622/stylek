import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylek_app/core/routes/routes.dart';
import 'package:stylek_app/core/widgets/custom_text_from_field.dart';
import 'package:stylek_app/core/widgets/gradient_scaffold.dart';
import 'package:stylek_app/core/widgets/labeled_field.dart';
import 'package:stylek_app/core/widgets/main_button.dart';
import 'package:stylek_app/features/forgot_password/widgets/forgot_password_header.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailOrPhoneController = TextEditingController();
  String? _emailOrPhoneError;

  @override
  void dispose() {
    _emailOrPhoneController.dispose();
    super.dispose();
  }

  bool _validateFields() {
    setState(() {
      final value = _emailOrPhoneController.text.trim();
      if (value.isEmpty) {
        _emailOrPhoneError = 'Please enter your email or phone';
      } else {
        _emailOrPhoneError = null;
      }
    });
    return _emailOrPhoneError == null;
  }

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            const ForgotPasswordHeader(),
            const SizedBox(height: 40),
            LabeledField(
              label: 'Email or Phone',
              error: _emailOrPhoneError,
              child: CustomTextFormField(
                controller: _emailOrPhoneController,
                hintText: 'Enter your Email or Phone',
              ),
            ),
            const SizedBox(height: 35),
            MainButton(
              text: 'Request Code',
              onPressed: () {
                if (_validateFields()) {
                  context.push(Routes.verification);
                }
              },
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
