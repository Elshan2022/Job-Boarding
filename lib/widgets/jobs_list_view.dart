import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JobsListView extends StatelessWidget {
  const JobsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Container(
          width: double.infinity,
          height: 232.h,
          margin: EdgeInsets.only(bottom: 15.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.w),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: ClipPath(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.w),
                        topRight: Radius.circular(15.w),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15.w),
                      bottomRight: Radius.circular(15.w),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
