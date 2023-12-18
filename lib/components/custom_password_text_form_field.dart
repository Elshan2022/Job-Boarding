// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPasswordTextFromField extends StatefulWidget {
  CustomPasswordTextFromField({
    super.key,
    required this.isVisible,
    this.errorText = "",
    this.onChange,
    required this.hintText, required this.controller,
  });

  bool isVisible = false;
  final TextEditingController controller;
  final String? errorText;
  final Function(String)? onChange;
  final String hintText;

  @override
  State<CustomPasswordTextFromField> createState() =>
      _CustomPasswordTextFromFieldState();
}

class _CustomPasswordTextFromFieldState
    extends State<CustomPasswordTextFromField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85.h,
      width: double.infinity,
      margin: EdgeInsets.only(left: 16.w, right: 16.w),
      child: TextFormField(
        controller: widget.controller,
        cursorColor: Colors.white,
        obscureText: widget.isVisible,
        style: AppText.textMedium(
            size: 16, textColor: Colors.white, decoration: TextDecoration.none),
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                widget.isVisible = !widget.isVisible;
              });
            },
            icon: Icon(
              widget.isVisible ? Icons.visibility_off : Icons.visibility,
              color: Colors.white,
              size: 25.w,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.w),
            borderSide: const BorderSide(color: Colors.white),
          ),
          hintStyle: AppText.textMedium(size: 16),
          errorText: widget.errorText,
          hintText: widget.hintText,
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
        onChanged: widget.onChange,
      ),
    );
  }
}
