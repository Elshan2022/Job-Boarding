import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HelperMethods {
  static showSnackBar(
      BuildContext context, String? message, Color backGroundColor) {
    Flushbar(
      duration: const Duration(seconds: 2),
      borderRadius: BorderRadius.circular(15.w),
      flushbarPosition: FlushbarPosition.TOP,
      margin: EdgeInsets.all(20.w),
      backgroundColor: backGroundColor,
      messageText: Center(
        child: Text(
          message!,
          maxLines: 2,
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    ).show(context);
  }

  static showProgress() {
    return const Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      ),
    );
  }
}
