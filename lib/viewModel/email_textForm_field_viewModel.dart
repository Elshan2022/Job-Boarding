// ignore_for_file: file_names


import 'package:flutter_job_boarding/components/regx.dart';
import 'package:flutter_job_boarding/userWidgets/email_textForm_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class EmailTextFormFieldViewModel extends ConsumerState<EmailTextFormField> {
  String? text = "";
  final RegxPattern regxPattern = RegxPattern();

 /*  String? get emailError {
    if (text!.isEmpty) {
      return "Can't be empty";
    }

    if (!regxPattern.emailRegExp.hasMatch(text!)) {
      return "Please enter valid email";
    }

    return null;
  } */
}
