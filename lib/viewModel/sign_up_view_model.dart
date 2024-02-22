// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/helper_methods.dart';
import 'package:flutter_job_boarding/model/sign_up_model.dart';
import 'package:flutter_job_boarding/navigation/routes_name.dart';
import 'package:flutter_job_boarding/repository/service_repository.dart';
import 'package:flutter_job_boarding/userView/sign_up_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

abstract class SignUpViewModel extends ConsumerState<SignUpPage> {
  bool isLoading = false;
  final RoutesNames _routesNames = RoutesNames();
  ServiceRepository serviceRepository = ServiceRepository();
  late final TextEditingController name;
  late final TextEditingController surname;
  late final TextEditingController email;
  late final TextEditingController phoneNumber;
  late final TextEditingController password;

  Future<void> signUp() async {
    setState(() {
      isLoading = true;
    });

    try {
      await serviceRepository.signUp(
        SignUpModel(
          uuid: const Uuid().v4(),
          name: name.text,
          surname: surname.text,
          email: email.text,
          phoneNumber: phoneNumber.text,
          password: password.text,
        ),
        ref,
      );
      AutoRouter.of(context).replaceNamed(_routesNames.main);
    } catch (e) {
      HelperMethods.showSnackBar(context, e.toString(), AppColors.colorRed);
    }
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    name = TextEditingController();
    surname = TextEditingController();
    email = TextEditingController();
    phoneNumber = TextEditingController();
    password = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    name.dispose();
    surname.dispose();
    email.dispose();
    phoneNumber.dispose();
    password.dispose();
    super.dispose();
  }
}
