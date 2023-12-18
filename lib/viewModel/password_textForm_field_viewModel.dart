// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/regx.dart';
import 'package:flutter_job_boarding/widgets/pasword_textForm_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class PasswordTextFormFieldViewModel
    extends ConsumerState<PasswordTextFormField> {
  bool isVisible = true;
  late final TextEditingController passwordController;
  final RegxPattern regxPattern = RegxPattern();

  void changeVisibility() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  void initState() {
    passwordController = TextEditingController();
    super.initState();
  }
}
