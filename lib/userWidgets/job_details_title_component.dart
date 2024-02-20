import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JobDetailTitleComponent extends StatelessWidget {
  const JobDetailTitleComponent({
    super.key,
    required this.iconPath,
    required this.title,
    required this.titleWidth,
  });

  final String iconPath;
  final String title;
  final double titleWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: titleWidth.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 40.w,
            height: 40.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.w),
              color: AppColors.primaryColor.withOpacity(0.4),
            ),
            child: Center(
              child: Image.asset(
                iconPath,
                width: 24.w,
                height: 24.w,
              ),
            ),
          ),
          Text(
            title,
            style: AppText.textBold(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
