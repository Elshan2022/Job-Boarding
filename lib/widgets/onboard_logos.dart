import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardLogos extends StatelessWidget {
  const OnBoardLogos(
      {super.key,
      this.angle = 0,
      this.containerWidth = 0,
      this.containerColor = AppColors.lightGrey,
      this.iconPath = "",
      this.text = "",
      this.containerHeight = 10});

  final double angle;
  final double containerWidth;
  final double containerHeight;
  final Color containerColor;
  final String iconPath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle,
      child: Container(
        width: containerWidth.w,
        height: containerHeight..h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(41.31.w),
          color: containerColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconPath,
              width: 30.98.w,
              height: 30.98.h,
            ),
            SizedBox(width: 10.w),
            Text(
              text,
              style: AppText.textBold(
                size: 20.61.w,
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
