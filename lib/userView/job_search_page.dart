import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/model/job_model.dart';
import 'package:flutter_job_boarding/providers/search_job_provider.dart';
import 'package:flutter_job_boarding/userWidgets/job_reviews.dart';
import 'package:flutter_job_boarding/userWidgets/salary_duration.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class JobSearchPage extends ConsumerStatefulWidget {
  const JobSearchPage({super.key});

  @override
  ConsumerState<JobSearchPage> createState() => _JobSearchPageState();
}

class _JobSearchPageState extends ConsumerState<JobSearchPage> {
  final BorderRadius _borderRadius = BorderRadius.circular(10.w);
  final String _hintText = "Search for company or role...";
  List<JobModel> jobs = JobModel.jobList;
  @override
  Widget build(BuildContext context) {
    final searchJobs = ref.watch(jobSearchProvider);
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Find your job",
          style: AppText.textBold(fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w),
          child: Column(
            children: [
              Container(
                height: 50.h,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 10.h),
                child: TextFormField(
                  style:
                      AppText.textMedium(fontSize: 14, textColor: Colors.white),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 10.h),
                    prefixIcon:
                        Icon(Icons.search, color: Colors.white, size: 20.w),
                    hintText: _hintText,
                    hintStyle: AppText.textMedium(fontSize: 14),
                    fillColor: AppColors.primaryLight,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: _borderRadius,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: _borderRadius,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: _borderRadius,
                    ),
                  ),
                  onChanged: (value) {
                    ref.read(jobSearchProvider.notifier).searchJob(value);
                  },
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: searchJobs.isEmpty ? jobs.length : searchJobs.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 15.h),
                    decoration: _decoration(),
                    child: Column(
                      children: [
                        JobReview(
                          jobList: searchJobs.isEmpty ? jobs : searchJobs,
                          index: index,
                        ),
                        JobSalaryDuration(
                          jobList: searchJobs.isEmpty ? jobs : searchJobs,
                          index: index,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

BoxDecoration _decoration() {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(15.w),
  );
}
