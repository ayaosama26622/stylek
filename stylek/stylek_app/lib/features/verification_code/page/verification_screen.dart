import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylek_app/core/routes/routes.dart';
import 'package:stylek_app/core/widgets/gradient_scaffold.dart';
import 'package:stylek_app/core/widgets/main_button.dart';
import 'package:stylek_app/core/widgets/otp_field.dart';
import 'package:stylek_app/features/verification_code/widgets/resend_code_button.dart';
import 'package:stylek_app/features/verification_code/widgets/verification_header.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final _formKey = GlobalKey<FormState>();
  final _otpController = TextEditingController();

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
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
            const VerificationHeader(),
            const SizedBox(height: 16),
            OtpField(controller: _otpController),
            const SizedBox(height: 16),
            ResendCodeButton(onTap: () {}),
            const SizedBox(height: 40),
            MainButton(
              text: 'Verify',
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  context.push(Routes.newPassword);
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
