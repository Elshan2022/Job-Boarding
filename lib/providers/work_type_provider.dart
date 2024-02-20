import 'package:flutter_riverpod/flutter_riverpod.dart';

final workTypeProvider = StateProvider.family<String?,List<String>>((ref, list) {
  return list.first;
});
