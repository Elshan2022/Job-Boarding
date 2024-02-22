import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/components/decoration.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown(
      {super.key, required this.list, required this.value, this.onChange});

  final List<String> list;
  final String value;
  final Function(String?)? onChange;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: value,
      dropdownColor: AppColors.primaryLight,
      borderRadius: BorderRadius.circular(15.w),
      style: AppText.textMedium(
        fontSize: 16,
        textColor: Colors.white,
        decoration: TextDecoration.none,
      ),
      decoration: InputDecoration(
        hintStyle: AppText.textMedium(fontSize: 16),
        border: AppDecorations.textFieldBorder,
        errorBorder: AppDecorations.textFieldErrorBorder,
        focusedBorder: AppDecorations.textFieldBorder,
        enabledBorder: AppDecorations.textFieldBorder,
      ),
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: onChange,
    );
  }
}
