import 'package:flutter_job_boarding/components/regx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PasswordSignUpNotifier extends Notifier<String?> {
  @override
  build() {
    return "Can't be empty";
  }

  final RegxPattern regxPattern = RegxPattern();

  void validatePassword(String password) {
    if (password.isEmpty) {
      state = "Can't be empty";
    } else if (!regxPattern.passwordRegExp.hasMatch(password)) {
      state = "Must be one upperletter and 8 charachter";
    } else {
      state = null;
    }
  }
}

final passwordSignUpProvider =
    NotifierProvider<PasswordSignUpNotifier, String?>(
        PasswordSignUpNotifier.new);

final isPasswordSignUpValidateProvider = StateProvider<bool>((ref) {
  final passwordProvider = ref.watch(passwordSignUpProvider);
  if (passwordProvider == null) {
    return true;
  } else {
    return false;
  }
});
