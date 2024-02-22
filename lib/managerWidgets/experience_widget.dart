import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/managerWidgets/custom_drop_down.dart';
import 'package:flutter_job_boarding/providers/experience_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExperienceWidget extends ConsumerWidget {
  ExperienceWidget({super.key});

  final _experiences = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10+"];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final expProvider = ref.watch(experienceProvider(_experiences).notifier);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Experience", style: AppText.textMedium(fontSize: 14)),
        SizedBox(height: 10.h),
        CustomDropDown(
          list: _experiences,
          value: expProvider.state.toString(),
          onChange: (exp) {
            expProvider.state = exp;
          },
        ),
      ],
    );
  }
}
