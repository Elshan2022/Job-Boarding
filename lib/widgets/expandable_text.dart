import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpandableText extends StatelessWidget {
  const ExpandableText({super.key, required this.luminance});

  final double luminance;

  final description =
      "The program does not require expensive hardware and is not designed for large movements, such as those used when playing video games—this limits its use to navigational duties. The company plans to achieve profit by licensing the technology to software companies that can then integrate Flutter into their own apps";

  fullText(String text) {
    return text.substring(0, 100);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.w, right: 10.w, top: 130.h),
      child: Text(
        fullText(description),
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        style: GoogleFonts.inter(
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          color: luminance > 0.4 ? AppColors.primaryColor : Colors.white,
        ),
      ),
    );
  }
}
