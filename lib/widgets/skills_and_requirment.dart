import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/gen/assets.gen.dart';
import 'package:flutter_job_boarding/model/job_model.dart';
import 'package:flutter_job_boarding/widgets/job_details_title_component.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SkillsAndRequirments extends StatelessWidget {
  SkillsAndRequirments({super.key, required this.index});
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
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _jobs[index].skills.length,
            itemBuilder: (context, skillsIndex) {
              return Container(
                color: Colors.red,
                margin: EdgeInsets.only(bottom: 10.h),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(
                    Icons.fiber_manual_record,
                    size: 10.w,
                    color: Colors.white,
                  ),
                  title: Text(
                    _jobs[index].skills[skillsIndex],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
