import 'package:flutter_riverpod/flutter_riverpod.dart';

class SkillsNotifier extends StateNotifier<List<String>?> {
  SkillsNotifier() : super([]);

  setSkills(List<String>? skills) {
    state = skills;
  }
}

class AdditionalSkillsNotifier extends StateNotifier<List<String>> {
  AdditionalSkillsNotifier() : super([]);

  addSkill(String? skill) {
    if (skill != null && skill.isNotEmpty) {
      state = [...state, skill];
    }
  }

  deleteSkill(String? skill) {
    if (skill != null && skill.isNotEmpty) {
      state = List.from(state)..removeWhere((element) => element == skill);
    }
  }
}

final addtionalSkillProvider =
    StateNotifierProvider<AdditionalSkillsNotifier, List<String>>((ref) {
  return AdditionalSkillsNotifier();
});

final skillsProvider =
    StateNotifierProvider<SkillsNotifier, List<String>?>((ref) {
  return SkillsNotifier();
});
