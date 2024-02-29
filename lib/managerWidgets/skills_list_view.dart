import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/providers/skills_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SkillsListView extends ConsumerWidget {
 const SkillsListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final skills = ref.watch(addtionalSkillProvider);
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        spacing: 8.w,
        children: skills
            .map(
              (skill) => InputChip(
                backgroundColor: AppColors.primaryBlue,
                deleteIcon: Icon(Icons.close, size: 14.w),
                deleteIconColor: AppColors.colorRed,
                onDeleted: () {
                  ref.read(addtionalSkillProvider.notifier).deleteSkill(skill);
                },
                label: Text(
                  skill,
                  style: AppText.textMedium(fontSize: 18),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
