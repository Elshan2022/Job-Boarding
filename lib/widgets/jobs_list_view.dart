import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/model/job_model.dart';
import 'package:flutter_job_boarding/viewModel/job_list_viewModel.dart';
import 'package:flutter_job_boarding/widgets/job_reviews.dart';
import 'package:flutter_job_boarding/widgets/salary_duration.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JobsListView extends StatefulWidget {
  const JobsListView({super.key});

  @override
  State<JobsListView> createState() => _JobsListViewState();
}

class _JobsListViewState extends JobListViewModel {
  final jobs = JobModel.jobList;
  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animation,
      child: Consumer(
        builder: (context, ref, child) {
          return ListView.builder(
            itemCount: jobs.length,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 15.h),
                decoration: _decoration(),
                child: Column(
                  children: [
                    JobReview(jobList: jobs, index: index),
                    JobSalaryDuration(jobList: jobs, index: index),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  BoxDecoration _decoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(15.w),
    );
  }
}
