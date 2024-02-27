import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDecorations {
  static ButtonStyle get buttonStyle {
    return ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColors.lightGrey;
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

  static InputBorder get textFieldBorder {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.w),
      borderSide: const BorderSide(color: Colors.white),
    );
  }

  static InputBorder get textFieldErrorBorder {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.w),
      borderSide: const BorderSide(color: AppColors.colorRed),
    );
  }

  static TextStyle get textFieldTextStyle {
    return AppText.textMedium(
      fontSize: 16,
      textColor: Colors.white,
      decoration: TextDecoration.none,
    );
  }

  static ButtonStyle get elevatedButtonStyle {
    return ElevatedButton.styleFrom(
      backgroundColor: AppColors.primaryBlue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.w),
      ),
    );
  }
}
