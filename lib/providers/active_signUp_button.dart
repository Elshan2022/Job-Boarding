// ignore_for_file: file_names

import 'package:flutter_job_boarding/providers/email_signup.dart';
import 'package:flutter_job_boarding/providers/name_provider.dart';
import 'package:flutter_job_boarding/providers/number_provider.dart';
import 'package:flutter_job_boarding/providers/password_sign_up.dart';
import 'package:flutter_job_boarding/providers/surname_provider.dart';
import 'package:flutter_job_boarding/providers/user_image_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final activeSignUpButtonProvider = StateProvider.autoDispose<bool>((ref) {
  bool isNameValidate = ref.watch(isValidNameProvider.notifier).state;
  bool isSurnameValidate = ref.watch(isValidSurnameProvider.notifier).state;
  bool isEmailValidate = ref.watch(isValidSignUpEmailProvider.notifier).state;
  bool isPhoneValidate = ref.watch(isValidPhoneNumberProvider.notifier).state;
  var hasImage = ref.watch(userImageProvider);
  bool isPasswordValidate =
      ref.watch(isPasswordSignUpValidateProvider.notifier).state;

  if (isNameValidate &&
      isSurnameValidate &&
      isEmailValidate &&
      isPasswordValidate &&
      isPhoneValidate &&
      hasImage != null) {
    return true;
  } else {
    return false;
  }
});
