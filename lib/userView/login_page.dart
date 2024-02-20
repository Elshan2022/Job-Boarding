import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/viewModel/login_view_model.dart';
import 'package:flutter_job_boarding/userWidgets/email_textForm_field.dart';
import 'package:flutter_job_boarding/userWidgets/login_button.dart';
import 'package:flutter_job_boarding/userWidgets/pasword_textForm_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends LoginViewModel {
  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).viewInsets.bottom;

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(bottom: padding),
          child: Column(
            children: [
              _title(),
              SizedBox(height: 50.h),
              const EmailTextFormField(),
              const PasswordTextFormField(),
              const LoginButton(),
              _signUpTitle(context),
            ],
          ),
        ),
      ),
    );
  }

  InkWell _signUpTitle(BuildContext context) {
    return InkWell(
      onTap: () {
        AutoRouter.of(context).pushNamed(routesNames.signUp);
      },
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          child: Text(
            "Do you have any account ?",
            style: AppText.textBold(
              decoration: TextDecoration.underline,
              fontSize: 16,
              textColor: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Align _title() {
    return Align(
      alignment: Alignment.center,
      child: ScaleTransition(
        scale: animation,
        child: Container(
          height: 200.h,
          width: 200.w,
          margin: EdgeInsets.only(top: 80.h),
          decoration: BoxDecoration(
            color: AppColors.lightGrey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(15.w),
          ),
          child: Center(
            child: Text(
              "Good Job!",
              style: AppText.textBold(fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}
