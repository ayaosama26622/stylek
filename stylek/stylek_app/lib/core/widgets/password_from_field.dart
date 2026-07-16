import 'package:flutter/material.dart';
import 'package:stylek_app/core/styles/colors.dart';

class PasswordFromField extends StatefulWidget {
  const PasswordFromField({
    super.key,
    this.hintText,
    this.controller,
    this.validator,
  });

  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  @override
  State<PasswordFromField> createState() => _PasswordFromFieldState();
}

class _PasswordFromFieldState extends State<PasswordFromField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextFormField(
        controller: widget.controller,
        obscureText: obscureText,
        style: const TextStyle(color: AppColor.darkColor, fontSize: 15),
        validator:
            widget.validator ??
            (input) {
              if (input == null || input.isEmpty) {
                return 'Please enter your password';
              } else if (input.length < 8) {
                return 'Password must be at least 8 characters';
              }
              return null;
            },
        decoration: InputDecoration(
          hintText: widget.hintText,
          isDense: true,
          filled: false,

          hintStyle: const TextStyle(color: AppColor.greyColor, fontSize: 14),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 12,
          ),
          prefixIcon: const Icon(Icons.lock_outline, color: AppColor.greyColor),
          prefixIconConstraints: const BoxConstraints(
            minWidth: 36,
            minHeight: 36,
          ),
          suffixIconConstraints: const BoxConstraints(
            minWidth: 36,
            minHeight: 36,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
            icon: Icon(
              obscureText
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
              color: AppColor.greyColor,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),

            borderSide: const BorderSide(
              color: AppColor.primaryBlue,
              width: 1.5,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
        ),
      ),
    );
  }
}
