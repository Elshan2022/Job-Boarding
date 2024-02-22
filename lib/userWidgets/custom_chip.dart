import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({
    super.key,
    required this.imagePath,
    required this.title,
    this.chipColor = Colors.white,
  });

  final String imagePath;
  final String title;
  final Color chipColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.w),
        color: Colors.transparent,
        border: Border.all(
          width: 1.5,
          color: chipColor,
        ),
      ),
      child: Wrap(
        spacing: 5.w,
        children: [
          Image.asset(
            imagePath,
            width: 13.33.w,
            height: 13.33.w,
            color: chipColor,
          ),
          Text(
            title,
            style: AppText.textMedium(
              fontSize: 13,
              textColor: chipColor,
            ),
          ),
        ],
      ),
    );
  }
}
