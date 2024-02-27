import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/components/decoration.dart';
import 'package:flutter_job_boarding/components/helper_methods.dart';
import 'package:flutter_job_boarding/managerWidgets/experience_widget.dart';
import 'package:flutter_job_boarding/managerWidgets/skills_view.dart';
import 'package:flutter_job_boarding/managerWidgets/work_type_dropDown.dart';
import 'package:flutter_job_boarding/providers/locator_provider.dart';
import 'package:flutter_job_boarding/userWidgets/user_image.dart';
import 'package:flutter_job_boarding/viewModel/manager_page_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ManagerPage extends ConsumerStatefulWidget {
  const ManagerPage({super.key});

  @override
  ConsumerState<ManagerPage> createState() => _ManagerPageState();
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
              _userCurrentCountry(ref, context),
              SkillsView(),
              _textFormField(description, "Job description", 5),
              _textFormField(employeeRole, "Employee role", 5),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 15.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(flex: 1, child: WorkTypeDropDown()),
                    SizedBox(width: 15.w),
                    Expanded(flex: 1, child: ExperienceWidget()),
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              SizedBox(
                width: double.infinity,
                height: 56.h,
                child: ElevatedButton(
                  onPressed: () async {},
                  style: AppDecorations.elevatedButtonStyle,
                  child: Text(
                    "Publish job",
                    style: AppText.textBold(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _userCurrentCountry(WidgetRef ref, BuildContext context) {
    return ref.watch(locatorProvider(context)).when(
      data: (data) {
        country.text = data;
        return _textFormField(country, "Country");
      },
      error: (error, stackTrace) {
        return HelperMethods.showSnackBar(
          context,
          error.toString(),
          AppColors.colorRed,
        );
      },
      loading: () {
        return const AlertDialog(
          backgroundColor: AppColors.primaryLight,
          content: Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}

_textFormField(TextEditingController controller, String hintText,
    [int maxLine = 1]) {
  return Container(
    margin: EdgeInsets.only(bottom: 15.h),
    child: TextFormField(
      cursorColor: Colors.white,
      controller: controller,
      maxLines: maxLine,
      style: AppDecorations.textFieldTextStyle,
      decoration: InputDecoration(
        hintStyle: AppText.textMedium(fontSize: 16),
        hintText: hintText,
        border: AppDecorations.textFieldBorder,
        errorBorder: AppDecorations.textFieldErrorBorder,
        focusedBorder: AppDecorations.textFieldBorder,
        enabledBorder: AppDecorations.textFieldBorder,
      ),
    ),
  );
}
