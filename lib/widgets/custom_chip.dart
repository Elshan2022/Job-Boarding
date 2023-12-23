import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({
    super.key,
    required this.luminance,
    required this.imagePath,
    required this.title,
  });

  final double luminance;
  final String imagePath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      margin: EdgeInsets.only(left: 10.w),
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.w),
        color: Colors.transparent,
        border: Border.all(
          width: 1.5,
          color: luminance > 0.4 ? AppColors.primaryColor : Colors.white,
        ),
      ),
      child: Wrap(
        spacing: 5.w,
        children: [
          Image.asset(
            imagePath,
            width: 13.33.w,
            height: 13.33.w,
            color: luminance > 0.4 ? AppColors.primaryColor : Colors.white,
          ),
          Text(
            title,
            style: AppText.textMedium(
              size: 13,
              textColor:
                  luminance > 0.4 ? AppColors.primaryColor : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
