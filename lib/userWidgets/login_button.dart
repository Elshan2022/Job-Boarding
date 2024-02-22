import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/components/decoration.dart';
import 'package:flutter_job_boarding/components/helper_methods.dart';
import 'package:flutter_job_boarding/navigation/routes_name.dart';
import 'package:flutter_job_boarding/providers/email_password_controllers.dart';
import 'package:flutter_job_boarding/providers/email_provider.dart';
import 'package:flutter_job_boarding/providers/password_provider.dart';
import 'package:flutter_job_boarding/repository/service_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginButton extends ConsumerStatefulWidget {
  const LoginButton({super.key});

  @override
  ConsumerState<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends ConsumerState<LoginButton> {
  final ServiceRepository _serviceRepository = ServiceRepository();
  final RoutesNames _routesNames = RoutesNames();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    final emailController = ref.watch(emailControllerProvider);
    final passwordController = ref.watch(passwordControllerProvider);

    return Container(
      width: double.infinity,
      height: 60.h,
      margin: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 60.h),
      child: ElevatedButton(
        onPressed: isValid(ref)
            ? () async {
                final email = emailController.value.text;
                final password = passwordController.value.text;
                await _signIn(email, password);
              }
            : null,
        style: AppDecorations.buttonStyle,
        child: Text(
          _isLoading ? "Please wait..." : "Login",
          style: AppText.textBold(fontSize: 20),
        ),
      ),
    );
  }

  isValid(WidgetRef ref) {
    final isValidPassword = ref.watch(isPasswordValidProvider.notifier).state;
    final isValidEmail = ref.watch(isValidEmailProvider.notifier).state;

    if (isValidEmail == true && isValidPassword == true) {
      return true;
    } else {
      return false;
    }
  }

  _signIn(String email, String password) async {
    setState(() {
      _isLoading = true;
    });
    try {
      await _serviceRepository.signIn(
        email,
        password,
      );
      if (context.mounted) {
        AutoRouter.of(context).pushNamed(_routesNames.main);
      }
    } catch (e) {
      if (context.mounted) {
        HelperMethods.showSnackBar(
          context,
          e.toString(),
          AppColors.colorRed,
        );
      }
    }
    setState(() {
      _isLoading = false;
    });
  }
}
