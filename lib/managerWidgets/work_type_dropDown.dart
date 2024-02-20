// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/managerWidgets/custom_drop_down.dart';
import 'package:flutter_job_boarding/providers/work_type_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkTypeDropDown extends ConsumerWidget {
  WorkTypeDropDown({super.key});
  final List<String> workType = ["Remote", "Office", "Optional"];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final type = ref.watch(workTypeProvider(workType).notifier);
    return SizedBox(
      width: double.infinity,
      child: CustomDropDown(
        list: workType,
        value: type.state!,
        onChange: (value) {
          type.state = value;
        },
      ),
    );
  }
}
