// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/components/helper_methods.dart';
import 'package:flutter_job_boarding/navigation/routes_name.dart';
import 'package:flutter_job_boarding/repository/service_repository.dart';
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const UserNameImage(),
            _title(),
            ElevatedButton(
              onPressed: () async {
                try {
                  RoutesNames routesNames = RoutesNames();
                  await serviceRepository.signOut();

                  AutoRouter.of(context).replaceNamed(routesNames.onBoard);
                } catch (e) {
                  HelperMethods.showSnackBar(
                      context, e.toString(), AppColors.colorRed);
                }
              },
              child: const Text(
                "Sign Out",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
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
