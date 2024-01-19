import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/gen/assets.gen.dart';
import 'package:flutter_job_boarding/model/job_model.dart';
import 'package:flutter_job_boarding/widgets/job_details_title_component.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoleField extends StatelessWidget {
  RoleField({super.key, required this.index});

  final int index;

  final List<JobModel> _jobs = JobModel.jobList;

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
            iconPath: Assets.icons.person.path,
            title: "Your role",
            titleWidth: 130,
          ),
          SizedBox(height: 10.h),
          Text(
            _jobs[index].role,
            style: AppText.textMedium(size: 16),
          ),
        ],
      ),
    );
  }
}
