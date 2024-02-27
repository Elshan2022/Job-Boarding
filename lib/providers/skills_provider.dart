import 'package:flutter_riverpod/flutter_riverpod.dart';

class SkillsNotifier extends StateNotifier<List<String>?> {
  SkillsNotifier() : super([]);

  setSkills(List<String>? skills) {
    state = skills;
  }
}

final skillsProvider =
    StateNotifierProvider<SkillsNotifier, List<String>?>((ref) {
  return SkillsNotifier();
});
