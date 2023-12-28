import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JobSalaryDuration extends StatelessWidget {
  JobSalaryDuration({super.key});

  final Radius radius = Radius.circular(15.w);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.only(bottomLeft: radius, bottomRight: radius),
        ),
      ),
    );
  }
}
