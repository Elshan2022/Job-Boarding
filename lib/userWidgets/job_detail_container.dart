import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/gen/assets.gen.dart';
import 'package:flutter_job_boarding/model/job_model.dart';
import 'package:flutter_job_boarding/userWidgets/custom_chip.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JobDetailContainer extends StatelessWidget {
  JobDetailContainer({super.key, required this.index});

  final int index;
  final List<JobModel> _jobs = JobModel.jobList;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.w,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.w),
        color: Colors.white,
      ),
      child: Column(
        children: [
          //job review
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFFCC636),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24.w),
                topRight: Radius.circular(24.w),
              ),
            ),
            child: Column(
              children: [
                //jobListTile
                ListTile(
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
                            image: NetworkImage(_jobs[index].jobLogo),
                          ),
                        ),
                      ),
                    ),
                  ),
                  title: Text(
                    _jobs[index].jobTitle,
                    style: AppText.textBold(
                      fontSize: 14,
                      textColor: AppColors.primaryColor,
                    ),
                  ),
                  subtitle: Text(
                    _jobs[index].jobSubtitle,
                    style: AppText.textMedium(
                      size: 12,
                      textColor: AppColors.primaryColor,
                    ),
                  ),
                ),

                //jobDeatils
                Container(
                  padding:
                      EdgeInsets.only(left: 10.w, right: 10.w, bottom: 10.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomChip(
                          chipColor: AppColors.primaryColor,
                          imagePath: Assets.icons.location.path,
                          title: _jobs[index].jobLocation),
                      SizedBox(width: 15.w),
                      CustomChip(
                        chipColor: AppColors.primaryColor,
                        imagePath: Assets.icons.cap.path,
                        title: "${_jobs[index].experience} years exp.",
                      ),
                      SizedBox(width: 15.w),
                      CustomChip(
                        chipColor: AppColors.primaryColor,
                        imagePath: Assets.icons.clock.path,
                        title: _jobs[index].jobTime,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //job salary and duration
          Container(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 18.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Posted ${_jobs[index].postedDuration} days ago",
                  style: AppText.textMedium(
                    size: 14,
                    textColor: AppColors.primaryColor,
                  ),
                ),
                Text(
                  "\$${_jobs[index].salary} K/M",
                  style: AppText.textBold(
                    fontSize: 18,
                    textColor: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
