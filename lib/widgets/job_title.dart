import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/gen/assets.gen.dart';
import 'package:flutter_job_boarding/model/job_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JobTitle extends StatelessWidget {
  const JobTitle({super.key, required this.index, required this.jobs});

  final int index;
  final List<JobModel> jobs;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        jobs[index].jobTitle,
        style: AppText.textBold(
          size: 14,
        ),
      ),
      subtitle: Text(
        jobs[index].jobSubtitle,
        style: AppText.textMedium(
          size: 12,
        ),
      ),
      leading: Container(
        width: 48.w,
        height: 48.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.w),
          color: AppColors.primaryColor,
        ),
        child: Center(
          child: Container(
            height: 28.w,
            width: 28.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.w),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(jobs[index].jobLogo),
              ),
            ),
          ),
        ),
      ),
      trailing: RawChip(
        avatar: Image.asset(
          Assets.icons.sendIcon.path,
          width: 14.w,
          height: 14.w,
        ),
        label: Text(
          "View",
          style: AppText.textMedium(size: 14),
        ),
        backgroundColor: AppColors.primaryColor.withOpacity(0.8),
        side: const BorderSide(color: Colors.white, width: 1),
        padding: EdgeInsets.all(12.w),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.w),
        ),
        onPressed: () {},
      ),
    );
  }
}
