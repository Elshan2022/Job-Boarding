import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/components/decoration.dart';
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
        style: AppDecorations.textFieldTextStyle,
        decoration: InputDecoration(
          errorText: errorMessage,
          hintStyle: AppText.textMedium(fontSize: 16),
          hintText: hintText,
          border: AppDecorations.textFieldBorder,
          errorBorder: AppDecorations.textFieldErrorBorder,
          focusedBorder: AppDecorations.textFieldBorder,
          enabledBorder: AppDecorations.textFieldBorder,
        ),
        onChanged: onChange,
      ),
    );
  }
}
