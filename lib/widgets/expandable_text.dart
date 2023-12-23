import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class ExpandableText extends StatelessWidget {
  const ExpandableText({super.key});

  final description =
      "The program does not require expensive hardware and is not designed for large movements, such as those used when playing video games—this limits its use to navigational duties. The company plans to achieve profit by licensing the technology to software companies that can then integrate Flutter into their own apps";

  fullText(String text) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.w, right: 10.w),
      child:Text(
        description,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: GoogleFonts.inter(
          fontSize: 12,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      )
    );
  }
}


/*Text(
        description,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: GoogleFonts.inter(
          fontSize: 12,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ) */
