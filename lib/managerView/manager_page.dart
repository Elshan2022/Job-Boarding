import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/components/decoration.dart';
import 'package:flutter_job_boarding/managerWidgets/work_type_dropDown.dart';
import 'package:flutter_job_boarding/userWidgets/user_image.dart';
import 'package:flutter_job_boarding/viewModel/manager_page_view_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ManagerPage extends StatefulWidget {
  const ManagerPage({super.key});

  @override
  State<ManagerPage> createState() => _ManagerPageState();
}

class _ManagerPageState extends ManagerPageViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 40.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const UserImage(),
              SizedBox(height: 15.h),
              _textFormField(companyName, "Your company name"),
              _textFormField(email, "Your email"),
              _textFormField(field, "I'm hiring..."),
              WorkTypeDropDown(),
            ],
          ),
        ),
      ),
    );
  }
}

_textFormField(TextEditingController controller, String hintText) {
  return Container(
    margin: EdgeInsets.only(bottom: 15.h),
    child: TextFormField(
      cursorColor: Colors.white,
      controller: controller,
      style: AppDecorations.textFieldTextStyle,
      decoration: InputDecoration(
        hintStyle: AppText.textMedium(size: 16),
        hintText: hintText,
        border: AppDecorations.textFieldBorder,
        errorBorder: AppDecorations.textFieldErrorBorder,
        focusedBorder: AppDecorations.textFieldBorder,
        enabledBorder: AppDecorations.textFieldBorder,
      ),
    ),
  );
}
