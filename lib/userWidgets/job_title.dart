import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/gen/assets.gen.dart';
import 'package:flutter_job_boarding/model/job_model.dart';
import 'package:flutter_job_boarding/navigation/routes_name.dart';
import 'package:flutter_job_boarding/providers/selected_index.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JobTitle extends ConsumerWidget {
  JobTitle({super.key, required this.index, required this.jobs});

  final int index;
  final List<JobModel> jobs;

  final RoutesNames _routesNames = RoutesNames();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: _title(),
      subtitle: _subTitle(),
      leading: _leadingIcon(),
      trailing: _trailingIcon(context, ref),
    );
  }

  RawChip _trailingIcon(BuildContext context, WidgetRef ref) {
    return RawChip(
      avatar: Image.asset(
        Assets.icons.sendIcon.path,
        width: 14.w,
        height: 14.w,
      ),
      label: Text(
        "View",
        style: AppText.textMedium(fontSize: 14),
      ),
      backgroundColor: AppColors.primaryColor.withOpacity(0.8),
      side: const BorderSide(color: Colors.white, width: 1),
      padding: EdgeInsets.all(12.w),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.w),
      ),
      onPressed: () {
        final selectedIndex = ref.read(selectedIndexProvider.notifier);
        selectedIndex.state = index;
        AutoRouter.of(context).pushNamed(_routesNames.jobDetail);
      },
    );
  }

  Container _leadingIcon() {
    return Container(
      width: 48.w,
      height: 48.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.w),
        color: AppColors.primaryColor,
      ),
      child: Center(
        child: Container(
          height: 28.w,
          width: 28.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.w),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(jobs[index].logo),
            ),
          ),
        ),
      ),
    );
  }

  Text _subTitle() {
    return Text(
      jobs[index].company,
      style: AppText.textMedium(
        fontSize: 12,
      ),
    );
  }

  Text _title() {
    return Text(
      jobs[index].field,
      style: AppText.textBold(
        fontSize: 14,
      ),
    );
  }
}
