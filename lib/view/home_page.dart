import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/repository/service_repository.dart';
import 'package:flutter_job_boarding/widgets/categorie.dart';
import 'package:flutter_job_boarding/widgets/jobs_list_view.dart';
import 'package:flutter_job_boarding/widgets/search_job_text_field.dart';
import 'package:flutter_job_boarding/widgets/user_name_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ServiceRepository serviceRepository = ServiceRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Container(
        margin: EdgeInsets.only(top: 70.h, right: 16.w, left: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const UserNameImage(),
              _title(),
              CategorieWidget(),
              SearchTextField(),
              const JobsListView(),
            ],
          ),
        ),
      ),
    );
  }

  Container _title() {
    return Container(
      margin: EdgeInsets.only(top: 24.h),
      child: Text(
        "Find Jobs",
        style: AppText.textBold(
          textColor: Colors.white,
          size: 32,
        ),
      ),
    );
  }
}
