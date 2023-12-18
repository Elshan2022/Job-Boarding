import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.textInputType,
      this.errorMessage = "",
      required this.hintText,
      required this.onChange,
      required this.controller});

  final TextInputType textInputType;
  final String? errorMessage;
  final String hintText;
  final TextEditingController controller;
  final Function(String)? onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85.h,
      width: double.infinity,
      margin: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 10.h),
      child: TextFormField(
        cursorColor: Colors.white,
        keyboardType: textInputType,
        controller: controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        style: AppText.textMedium(
            size: 16, textColor: Colors.white, decoration: TextDecoration.none),
        decoration: InputDecoration(
          errorText: errorMessage,
          hintStyle: AppText.textMedium(size: 16),
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.w),
            borderSide: const BorderSide(color: Colors.white),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.w),
            borderSide: const BorderSide(color: AppColors.colorRed),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.w),
            borderSide: const BorderSide(color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.w),
            borderSide: const BorderSide(color: Colors.white),
          ),
        ),
        onChanged: onChange,
      ),
    );
  }
}
