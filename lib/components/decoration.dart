import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDecorations {
  static ButtonStyle get buttonStyle {
    return ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColors.darkGrey;
          }
          return AppColors.primaryBlue;
        },
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.w),
        ),
      ),
    );
  }
}
