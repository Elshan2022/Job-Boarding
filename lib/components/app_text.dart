import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText {
  static textBold(
      {Color textColor = Colors.white,
      double size = 12,
      TextOverflow textOverflow = TextOverflow.ellipsis,
      TextDecoration decoration = TextDecoration.none}) {
    return GoogleFonts.inter(
        fontWeight: FontWeight.bold,
        color: textColor,
        fontSize: size.sp,
        decoration: decoration,
        textStyle: TextStyle(decoration: decoration));
  }

  static textMedium({
    Color textColor = Colors.white,
    double size = 12,
    TextDecoration decoration =  TextDecoration.none
  }) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w500,
      color: textColor,
      fontSize: size.sp,
      textStyle:  TextStyle(decoration: decoration),
    );
  }
}
