import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/navigation/routes_name.dart';
import 'package:flutter_job_boarding/widgets/companies.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class OnBoard extends StatelessWidget {
  OnBoard({super.key});
  final RoutesNames _routesNames = RoutesNames();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          _title(),
          _startButton(context),
          const Companies(),
        ],
      ),
    );
  }

  Container _startButton(BuildContext context) {
    return Container(
      width: 340.w,
      height: 56.h,
      margin: EdgeInsets.only(top: 40.29.h),
      child: ElevatedButton(
        onPressed: () {
          context.router.replaceNamed(_routesNames.login);
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32.w),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Start searching",
              style: AppText.textMedium(
                size: 16,
                textColor: Colors.white,
              ),
            ),
            SizedBox(width: 10.w),
            const Icon(Icons.arrow_right_alt),
          ],
        ),
      ),
    );
  }

  Container _title() {
    return Container(
      width: 340.w,
      height: 195.h,
      margin: EdgeInsets.only(top: 78.71.h, left: 45.w, right: 45.w),
      child: Text(
        "You search for the next dream job is over",
        textAlign: TextAlign.center,
        style: AppText.textBold(fontSize: 40, textColor: Colors.white),
      ),
    );
  }
}
