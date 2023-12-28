import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/gen/assets.gen.dart';
import 'package:flutter_job_boarding/model/job_model.dart';
import 'package:flutter_job_boarding/widgets/custom_chip.dart';
import 'package:flutter_job_boarding/widgets/job_title.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JobReviews extends StatelessWidget {
  JobReviews({super.key, required this.index});

  final int index;
  final Radius radius = Radius.circular(15.w);
  final List<JobModel> _list = JobModel.jobList;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _list[index].description.length + 100,
      decoration: BoxDecoration(
        color: AppColors.primaryBlue,
        borderRadius: BorderRadius.only(topLeft: radius, topRight: radius),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w),
        child: Stack(
          children: [
            //job logo
            JobTitle(index: index),
            //custom chips
            Container(
              margin: EdgeInsets.only(top: 80.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomChip(
                    imagePath: Assets.icons.location.path,
                    title: _list[index].jobLocation,
                  ),
                  CustomChip(
                    imagePath: Assets.icons.cap.path,
                    title: "${_list[index].experience} years exp.",
                  ),
                  CustomChip(
                    imagePath: Assets.icons.clock.path,
                    title: _list[index].jobTime,
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 130.h),
              child: Text(
                _list[index].description,
                style: AppText.textMedium(size: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
