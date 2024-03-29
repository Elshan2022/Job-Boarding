// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/managerWidgets/custom_drop_down.dart';
import 'package:flutter_job_boarding/providers/work_type_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorkTypeDropDown extends ConsumerWidget {
  WorkTypeDropDown({super.key});
  final List<String> workType = ["Full time", "Part time", "Optional"];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final type = ref.watch(workTypeProvider(workType).notifier);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Work type", style: AppText.textMedium(fontSize: 14)),
        SizedBox(height: 10.h),
        CustomDropDown(
          list: workType,
          value: type.state!,
          onChange: (value) {
            type.state = value;
          },
        ),
      ],
    );
  }
}
