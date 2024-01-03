import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/gen/assets.gen.dart';
import 'package:flutter_job_boarding/model/job_model.dart';
import 'package:flutter_job_boarding/providers/read_more_provider.dart';
import 'package:flutter_job_boarding/widgets/custom_chip.dart';
import 'package:flutter_job_boarding/widgets/job_title.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class JobReviews extends ConsumerStatefulWidget {
  const JobReviews({super.key, required this.index});

  final int index;

  @override
  ConsumerState<JobReviews> createState() => _JobReviewsState();
}

class _JobReviewsState extends ConsumerState<JobReviews>
    with SingleTickerProviderStateMixin {
  final Radius radius = Radius.circular(15.w);
  final List<JobModel> _list = JobModel.jobList;

  @override
  Widget build(BuildContext context) {
    final description = ref.watch(readMoreProvider(widget.index));
    final isExpand = ref.watch(isExpandProvider.notifier);
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryBlue,
        borderRadius: BorderRadius.only(topLeft: radius, topRight: radius),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w),
        child: Stack(
          children: [
            //job logo
            JobTitle(index: widget.index),
            //custom chips
            Container(
              margin: EdgeInsets.only(top: 80.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomChip(
                    imagePath: Assets.icons.location.path,
                    title: _list[widget.index].jobLocation,
                  ),
                  CustomChip(
                    imagePath: Assets.icons.cap.path,
                    title: "${_list[widget.index].experience} years exp.",
                  ),
                  CustomChip(
                    imagePath: Assets.icons.clock.path,
                    title: _list[widget.index].jobTime,
                  ),
                ],
              ),
            ),

            //description

            Container(
              margin: EdgeInsets.only(top: 130.h),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: description,
                      style: AppText.textMedium(size: 14),
                    ),
                    TextSpan(
                      text: isExpand.state ? "...Read Less" : "...Read More",
                      style: AppText.textBold(size: 14),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          ref
                              .read(readMoreProvider(widget.index).notifier)
                              .showMore(widget.index, _list);
                        },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
