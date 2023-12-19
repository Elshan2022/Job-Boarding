import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategorieNotifier extends Notifier<int> {
  @override
  build() {
    return 0;
  }

  selectCategory(int index) {
    state = index;
  }
}

final selectedCategoryProvider =
    NotifierProvider<CategorieNotifier, int>(CategorieNotifier.new);
