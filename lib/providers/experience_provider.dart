import 'package:flutter_riverpod/flutter_riverpod.dart';

final experienceProvider =
    StateProvider.family<String?, List<String>>((ref, list) {
  return list.first;
});
