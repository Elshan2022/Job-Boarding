import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JobDetailHeader extends StatelessWidget {
  const JobDetailHeader({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.h,
      margin: EdgeInsets.only(bottom: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  AutoRouter.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back,
                  size: 24.w,
                  color: Colors.white,
                ),
              ),
              Text(
                "Job Detail",
                style: AppText.textBold(fontSize: 18),
              ),
            ],
          ),
          CircleAvatar(
            radius: 20.w,
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(imageUrl),
          ),
        ],
      ),
    );
  }
}
