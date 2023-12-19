import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTextField extends StatelessWidget {
  SearchTextField({super.key});

  final BorderRadius _borderRadius = BorderRadius.circular(10.w);
  final String _hintText = "Search for company or role...";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 24.w),
      child: TextFormField(
        style: AppText.textMedium(size: 14, textColor: Colors.white),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 10.h),
          prefixIcon: Icon(Icons.search, color: Colors.white, size: 20.w),
          hintText: _hintText,
          hintStyle: AppText.textMedium(size: 14),
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
        onChanged: (value) {},
      ),
    );
  }
}
