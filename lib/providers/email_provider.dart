import 'package:flutter_job_boarding/components/regx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EmailNotifier extends Notifier<String?> {
  @override
  build() {
    return "Can't be empty";
  }

  RegxPattern regxPattern = RegxPattern();

  validateEmail(String email) {
    if (email.isEmpty) {
      state = "Can't be empty";
    } else if (!regxPattern.emailRegExp.hasMatch(email)) {
      state = "Please enter valid email";
    } else {
      state = null;
    }
  }
}

final emailNotifierProvider =
    NotifierProvider<EmailNotifier, String?>(EmailNotifier.new);

final isValidEmailProvider = StateProvider<bool>((ref) {
  final isValid = ref.watch(emailNotifierProvider);

  if (isValid == null) {
    return true;
  } else {
    return false;
  }
});
