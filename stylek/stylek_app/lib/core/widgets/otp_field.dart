import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:smart_auth/smart_auth.dart';
import 'package:stylek_app/core/styles/colors.dart';

class OtpField extends StatefulWidget {
  const OtpField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  State<OtpField> createState() => _OtpFieldState();
}

class _OtpFieldState extends State<OtpField> {
  late final SmsRetriever smsRetriever;
  final FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    smsRetriever = SmsRetrieverImpl(SmartAuth.instance);
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 55,
      height: 60,
      textStyle: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: AppColor.darkColor,
      ),
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColor.greyColor.withValues(alpha: 0.3),
          width: 1.5,
        ),
      ),
    );

    return Center(
      child: Pinput(
        length: 6,
        controller: widget.controller,
        focusNode: focusNode,
        smsRetriever: smsRetriever,
        defaultPinTheme: defaultPinTheme,
        validator: (value) {
          if (value == null || value.length < 6) return 'Enter full code';
          return null;
        },
        focusedPinTheme: defaultPinTheme.copyWith(
          decoration: defaultPinTheme.decoration!.copyWith(
            border: Border.all(color: AppColor.primaryPink, width: 2),
          ),
        ),
        submittedPinTheme: defaultPinTheme.copyWith(
          decoration: defaultPinTheme.decoration!.copyWith(
            border: Border.all(color: AppColor.primaryBlue, width: 2),
          ),
        ),
        errorPinTheme: defaultPinTheme.copyWith(
          decoration: defaultPinTheme.decoration!.copyWith(
            border: Border.all(color: AppColor.errorColor, width: 2),
          ),
        ),
      ),
    );
  }
}

class SmsRetrieverImpl implements SmsRetriever {
  const SmsRetrieverImpl(this.smartAuth);

  final SmartAuth smartAuth;

  @override
  Future<void> dispose() {
    return smartAuth.removeUserConsentApiListener();
  }

  @override
  Future<String?> getSmsCode() async {
    final res = await smartAuth.getSmsWithUserConsentApi();
    return res.data?.code;
  }

  @override
  bool get listenForMultipleSms => false;
}
