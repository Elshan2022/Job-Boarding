import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JobTitle extends StatelessWidget {
  const JobTitle({super.key, required this.luminance});

  final double luminance;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 10.w),
      subtitle: Text(
        "Google",
        style: AppText.textMedium(
          size: 12,
          textColor: luminance > 0.6 ? AppColors.primaryColor : Colors.white,
        ),
      ),
      title: Text(
        "Flutter developer",
        style: AppText.textBold(
          size: 18,
          textColor: luminance > 0.6 ? AppColors.primaryColor : Colors.white,
        ),
      ),
      leading: Container(
        height: 48.w,
        width: 48.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.w),
          color: AppColors.primaryColor,
        ),
        child: Center(
          child: Container(
            width: 30.w,
            height: 30.w,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://blog.hubspot.com/hs-fs/hubfs/image8-2.jpg?width=600&name=image8-2.jpg",
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
