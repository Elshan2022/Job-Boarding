// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/components/custom_password_text_form_field.dart';
import 'package:flutter_job_boarding/components/custom_text_form_field.dart';
import 'package:flutter_job_boarding/components/decoration.dart';
import 'package:flutter_job_boarding/providers/active_signUp_button.dart';
import 'package:flutter_job_boarding/providers/email_signup.dart';
import 'package:flutter_job_boarding/providers/name_provider.dart';
import 'package:flutter_job_boarding/providers/number_provider.dart';
import 'package:flutter_job_boarding/providers/password_sign_up.dart';
import 'package:flutter_job_boarding/providers/surname_provider.dart';
import 'package:flutter_job_boarding/viewModel/sign_up_view_model.dart';
import 'package:flutter_job_boarding/userWidgets/user_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends SignUpViewModel {
  @override
  Widget build(BuildContext context) {
    final nameError = ref.watch(nameProvider);
    final surnameError = ref.watch(surnameProvider);
    final emailError = ref.watch(signEmailNotifierProvider);
    final phoneError = ref.watch(phoneNumberProvider);
    final passwordError = ref.watch(passwordSignUpProvider);

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Container(
        margin: EdgeInsets.only(top: 60.h),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              children: [
                const UserImage(),
                SizedBox(height: 50.h),
                CustomTextFormField(
                  controller: name,
                  textInputType: TextInputType.name,
                  hintText: "Name",
                  errorMessage: nameError,
                  onChange: (name) {
                    ref.read(nameProvider.notifier).validateName(name);
                  },
                ),
                CustomTextFormField(
                  controller: surname,
                  textInputType: TextInputType.name,
                  hintText: "Surname",
                  errorMessage: surnameError,
                  onChange: (surname) {
                    ref.read(surnameProvider.notifier).validateSurname(surname);
                  },
                ),
                CustomTextFormField(
                  controller: email,
                  textInputType: TextInputType.emailAddress,
                  hintText: "Email",
                  errorMessage: emailError,
                  onChange: (email) {
                    ref
                        .read(signEmailNotifierProvider.notifier)
                        .validateEmail(email);
                  },
                ),
                CustomTextFormField(
                  controller: phoneNumber,
                  textInputType: TextInputType.number,
                  hintText: "Number",
                  errorMessage: phoneError,
                  onChange: (phone) {
                    ref.read(phoneNumberProvider.notifier).validatePhone(phone);
                  },
                ),
                CustomPasswordTextFromField(
                  hintText: "Password",
                  controller: password,
                  errorText: passwordError,
                  isVisible: true,
                  onChange: (password) {
                    ref
                        .read(passwordSignUpProvider.notifier)
                        .validatePassword(password);
                  },
                ),
                SizedBox(height: 30.h),
                _signUpButton(ref),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _signUpButton(WidgetRef ref) {
    final isActive = ref.watch(activeSignUpButtonProvider.notifier).state;
    return Container(
      height: 60.h,
      width: double.infinity,
      margin: EdgeInsets.only(left: 16.w, right: 16.w),
      child: ElevatedButton(
        onPressed: isActive ? () async => await signUp() : null,
        style: AppDecorations.buttonStyle,
        child: Text(
          isLoading ? "Please wait..." : "Sign up",
          style: AppText.textBold(fontSize: 20),
        ),
      ),
    );
  }
}
