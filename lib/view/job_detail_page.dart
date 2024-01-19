import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/helper_methods.dart';
import 'package:flutter_job_boarding/viewModel/job_detail_view_model.dart';
import 'package:flutter_job_boarding/widgets/job_description_field.dart';
import 'package:flutter_job_boarding/widgets/job_detail_container.dart';
import 'package:flutter_job_boarding/widgets/job_detail_header.dart';
import 'package:flutter_job_boarding/widgets/role_field.dart';
import 'package:flutter_job_boarding/widgets/skills_and_requirment.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class JobDetailPage extends StatefulWidget {
  const JobDetailPage({super.key});

  @override
  State<JobDetailPage> createState() => _JobDetailPageState();
}

class _JobDetailPageState extends JobDetailViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 50.h),
        child: FutureBuilder(
          future: userData,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done &&
                snapshot.hasData) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    JobDetailHeader(
                      imageUrl: snapshot.data!["imageUrl"],
                    ),
                    JobDetailContainer(index: 0),
                    JobDescriptionFeild(index: 0),
                    SkillsAndRequirments(index: 0),
                    RoleField(index: 0),
                  ],
                ),
              );
            } else {
              return HelperMethods.showProgress();
            }
          },
        ),
      ),
    );
  }
}
