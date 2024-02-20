import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/gen/assets.gen.dart';
import 'package:flutter_job_boarding/model/job_model.dart';
import 'package:flutter_job_boarding/userWidgets/job_details_title_component.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SkillsAndRequirements extends StatelessWidget {
  SkillsAndRequirements({super.key, required this.index});
  final List<JobModel> _jobs = JobModel.jobList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8.w),
      margin: EdgeInsets.only(top: 15.h),
      decoration: BoxDecoration(
        color: AppColors.primaryLight,
        borderRadius: BorderRadius.circular(24.w),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          JobDetailTitleComponent(
            iconPath: Assets.icons.confirmIcon.path,
            title: "Skills & Requirments",
            titleWidth: 230,
          ),
          Container(
            margin: EdgeInsets.only(top: 15.h),
            child: ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _jobs[index].skills.length,
              itemBuilder: (context, skillsIndex) {
                return Container(
                  margin: EdgeInsets.only(bottom: 12.h),
                  child: Row(
                    children: [
                      _reordIcon(),
                      SizedBox(width: 10.h),
                      _skills(skillsIndex),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Expanded _skills(int skillsIndex) {
    return Expanded(
      child: Text(
        _jobs[index].skills[skillsIndex],
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: AppText.textMedium(size: 16),
      ),
    );
  }

  Icon _reordIcon() {
    return Icon(
      Icons.fiber_manual_record,
      size: 10.w,
      color: Colors.white,
    );
  }
}
