import 'package:flutter_job_boarding/components/regx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SurnameNotifier extends Notifier<String?> {
  @override
  build() {
    return "Can't be empty";
  }

  final RegxPattern regxPattern = RegxPattern();

  void validateSurname(String surname) {
    if (surname.isEmpty) {
      state = "Can't be empty";
    } else if (!regxPattern.nameRegExp.hasMatch(surname)) {
      state = "Must be only letters and minimum 3 charachters";
    } else {
      state = null;
    }
  }
}

final isValidSurnameProvider = StateProvider<bool>((ref) {
  final surname = ref.watch(surnameProvider);
  if (surname == null) {
    return true;
  } else {
    return false;
  }
});

final surnameProvider =
    NotifierProvider<SurnameNotifier, String?>(SurnameNotifier.new);
