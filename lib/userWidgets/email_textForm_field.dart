// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/custom_text_form_field.dart';
import 'package:flutter_job_boarding/providers/email_password_controllers.dart';
import 'package:flutter_job_boarding/providers/email_provider.dart';
import 'package:flutter_job_boarding/viewModel/email_textForm_field_viewModel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EmailTextFormField extends ConsumerStatefulWidget {
  const EmailTextFormField({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EmailTextFormFieldState();
}

class _EmailTextFormFieldState extends EmailTextFormFieldViewModel {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final errorMessage = ref.watch(emailNotifierProvider);
    final emailController = ref.watch(emailControllerProvider);
    return CustomTextFormField(
      textInputType: TextInputType.emailAddress,
      controller: emailController,
      errorMessage: errorMessage,
      hintText: "Email",
      onChange: (value) {
        ref.read(emailNotifierProvider.notifier).validateEmail(value);
      },
    );
  }
}
