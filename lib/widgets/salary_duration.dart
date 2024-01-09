import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/model/job_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JobSalaryDuration extends ConsumerWidget {
  JobSalaryDuration({super.key, required this.index, required this.jobList});

  final int index;
  final Radius radius = Radius.circular(15.w);
  final List<JobModel> jobList;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: double.infinity,
      padding:
          EdgeInsets.only(top: 20.h, bottom: 20.h, left: 10.w, right: 10.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.only(bottomLeft: radius, bottomRight: radius),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Posted ${jobList[index].postedDuration} days ago",
            style: AppText.textMedium(
              size: 14,
              textColor: AppColors.primaryColor,
            ),
          ),
          Text(
            "\$${jobList[index].salary} K/M",
            style: AppText.textBold(
              size: 18,
              textColor: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
