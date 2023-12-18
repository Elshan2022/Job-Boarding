import 'package:flutter_job_boarding/components/regx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NameNotifier extends Notifier<String?> {
  @override
  build() {
    return "Can't be empty";
  }

  final RegxPattern regxPattern = RegxPattern();

  void validateName(String name) {
    if (name.isEmpty) {
      state = "Can't be empty";
    } else if (!regxPattern.nameRegExp.hasMatch(name)) {
      state = "Must be only letters and minimum 3 charachters";
    } else {
      state = null;
    }
  }
}

final isValidNameProvider = StateProvider<bool>((ref) {
  final name = ref.watch(nameProvider);
  if (name == null) {
    return true;
  } else {
    return false;
  }
});

final nameProvider = NotifierProvider<NameNotifier, String?>(NameNotifier.new);
