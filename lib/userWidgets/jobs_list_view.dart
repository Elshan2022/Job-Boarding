import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/model/job_model.dart';
import 'package:flutter_job_boarding/viewModel/job_list_viewModel.dart';
import 'package:flutter_job_boarding/userWidgets/job_reviews.dart';
import 'package:flutter_job_boarding/userWidgets/salary_duration.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JobsListView extends StatefulWidget {
  const JobsListView({super.key, required this.jobs});
  final List<JobModel> jobs;

  @override
  State<JobsListView> createState() => _JobsListViewState();
}

class _JobsListViewState extends JobListViewModel {
  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animation,
      child: Consumer(
        builder: (context, ref, child) {
          return ListView.builder(
            itemCount: widget.jobs.length,
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
                    JobReview(jobList: widget.jobs, index: index),
                    JobSalaryDuration(jobList: widget.jobs, index: index),
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
