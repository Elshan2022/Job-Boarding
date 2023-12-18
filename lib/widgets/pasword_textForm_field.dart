// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/providers/email_password_controllers.dart';
import 'package:flutter_job_boarding/providers/password_provider.dart';
import 'package:flutter_job_boarding/viewModel/password_textForm_field_viewModel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordTextFormField extends ConsumerStatefulWidget {
  const PasswordTextFormField({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends PasswordTextFormFieldViewModel {
  @override
  Widget build(BuildContext context) {
    final errorText = ref.watch(passwordProvider);
    final passwordController = ref.watch(passwordControllerProvider);
    return Container(
      height: 85.h,
      width: double.infinity,
      margin: EdgeInsets.only(top: 20.h, left: 16.w, right: 16.w, bottom: 80.h),
      child: TextFormField(
        controller: passwordController,
        cursorColor: Colors.white,
        obscureText: isVisible,
        style: AppText.textMedium(
            size: 16, textColor: Colors.white, decoration: TextDecoration.none),
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {
              changeVisibility();
            },
            icon: Icon(
              isVisible ? Icons.visibility_off : Icons.visibility,
              color: Colors.white,
              size: 25.w,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.w),
            borderSide: const BorderSide(color: Colors.white),
          ),
          hintStyle: AppText.textMedium(size: 16),
          errorText: errorText,
          hintText: "Password",
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.w),
            borderSide: const BorderSide(color: AppColors.colorRed),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.w),
            borderSide: const BorderSide(color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.w),
            borderSide: const BorderSide(color: Colors.white),
          ),
        ),
        onChanged: (value) {
          ref.read(passwordProvider.notifier).validatePassword(value);
        },
      ),
    );
  }
}
