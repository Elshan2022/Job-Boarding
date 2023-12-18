import 'package:flutter_job_boarding/components/regx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PasswordNotifier extends Notifier<String?> {
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

final isPasswordValidProvider = StateProvider<bool>((ref) {
  final errorText = ref.watch(passwordProvider);
  if (errorText == null) {
    return true;
  } else {
    return false;
  }
});

final passwordProvider =
    NotifierProvider<PasswordNotifier, String?>(PasswordNotifier.new);
