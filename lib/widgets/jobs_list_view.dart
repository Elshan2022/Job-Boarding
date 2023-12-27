import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/gen/assets.gen.dart';
import 'package:flutter_job_boarding/widgets/job_information.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JobsListView extends StatefulWidget {
  const JobsListView({super.key});

  @override
  State<JobsListView> createState() => _JobsListViewState();
}

class _JobsListViewState extends State<JobsListView>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 3000))
      ..forward();
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.easeInOutQuad);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return ConstrainedBox(
            constraints: BoxConstraints(minHeight: 232.h),
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 15.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.w),
              ),
              child: Stack(
                children: [
                  _bacgroundContainer(),
                  _viewButton(),
                  const JobInformation(),
                  _postedDuration(),
                  _salary(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Align _bacgroundContainer() {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        height: 110.h,
        width: 130.w,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(15.w),
        ),
      ),
    );
  }

  Positioned _salary() {
    return Positioned(
      top: 180.h,
      left: 280.w,
      child: SizedBox(
        width: 150.w,
        child: Text(
          "\$15K/month",
          style: AppText.textBold(
            textColor: AppColors.primaryColor,
            size: 18,
          ),
        ),
      ),
    );
  }

  Positioned _postedDuration() {
    return Positioned(
      top: 183.h,
      left: 10.w,
      child: Text(
        "Posted 2 days ago",
        style: AppText.textMedium(
          textColor: AppColors.primaryColor,
          size: 14,
        ),
      ),
    );
  }

  InkWell _viewButton() {
    return InkWell(
      onTap: () {},
      child: Align(
        alignment: Alignment.topRight,
        child: Container(
          height: 49.h,
          width: 97.w,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.darkGrey.withOpacity(0.6)),
            borderRadius: BorderRadius.circular(15.w),
          ),
          child: Center(
            child: Wrap(
              spacing: 4.w,
              children: [
                Text(
                  "View",
                  style: AppText.textBold(size: 14),
                ),
                Image.asset(
                  Assets.icons.sendIcon.path,
                  width: 16.w,
                  height: 16.w,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
