import 'package:flutter_job_boarding/components/regx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PhoneNumberNotifier extends Notifier<String?> {
  @override
  build() {
    return "Can't be empty";
  }

  final RegxPattern regxPattern = RegxPattern();

  void validatePhone(String phone) {
    if (phone.isEmpty) {
      state = "Can't be empty";
    } else if (!regxPattern.phoneRegExp.hasMatch(phone)) {
      state = "Enter valid phone number";
    } else {
      state = null;
    }
  }
}

final phoneNumberProvider =
    NotifierProvider<PhoneNumberNotifier, String?>(PhoneNumberNotifier.new);

final isValidPhoneNumberProvider = StateProvider<bool>((ref) {
  final phoneProvider = ref.watch(phoneNumberProvider);
  if (phoneProvider == null) {
    return true;
  } else {
    return false;
  }
});
