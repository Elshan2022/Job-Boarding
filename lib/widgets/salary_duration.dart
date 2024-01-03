import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/model/job_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JobSalaryDuration extends StatelessWidget {
  JobSalaryDuration({super.key, required this.index});

  final int index;
  final Radius radius = Radius.circular(15.w);
  final List<JobModel> _list = JobModel.jobList;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 20.h, bottom: 20.h, left: 10.w, right: 10.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.only(bottomLeft: radius, bottomRight: radius),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Posted ${_list[index].postedDuration} days ago",
            style: AppText.textMedium(
              size: 14,
              textColor: AppColors.primaryColor,
            ),
          ),
          Text(
            "\$${_list[index].salary} K/M",
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
