import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/components/helper_methods.dart';
import 'package:flutter_job_boarding/model/job_model.dart';
import 'package:flutter_job_boarding/navigation/routes_name.dart';
import 'package:flutter_job_boarding/providers/selected_index.dart';
import 'package:flutter_job_boarding/repository/service_repository.dart';
import 'package:flutter_job_boarding/view/job_detail_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class JobDetailViewModel extends State<JobDetailPage> {
  OverlayEntry? overlayEntry;
  final ServiceRepository serviceRepository = ServiceRepository();
  late final Future<Map<String, dynamic>?> userData;
  final List<JobModel> jobs = JobModel.jobList;
  final RoutesNames _routes = RoutesNames();

  Future<void> _getUserData() async {
    userData = serviceRepository.getUserData();
  }

  _showButtons() {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    overlayEntry = OverlayEntry(
      builder: (context) {
        return Positioned(
          top: height * 0.93,
          child: Container(
            height: 55.h,
            width: width * 0.92,
            margin: EdgeInsets.only(left: 16.w, right: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _saveButton(),
                SizedBox(width: 15.w),
                _applyButton(),
              ],
            ),
          ),
        );
      },
    );
    Overlay.of(context, debugRequiredFor: widget).insert(overlayEntry!);
  }

  Consumer _saveButton() {
    return Consumer(
      builder: (context, ref, child) {
        final index = ref.watch(selectedIndexProvider.notifier).state;
        final job = jobs[index];
        return Expanded(
          flex: 1,
          child: SizedBox(
            height: 52.h,
            child: ElevatedButton(
              onPressed: () async {
                try {
                  await serviceRepository.saveJob(
                    JobModel(
                      jobLogo: job.jobLogo,
                      jobTitle: job.jobTitle,
                      jobSubtitle: job.jobSubtitle,
                      postedDuration: job.postedDuration,
                      jobLocation: job.jobLocation,
                      experience: job.experience,
                      jobTime: job.jobTime,
                      salary: job.salary,
                      description: job.description,
                      id: job.id,
                      skills: job.skills,
                      role: job.role,
                    ),
                  );
                  if (!context.mounted) return;
                  HelperMethods.showSnackBar(
                    context,
                    "You saved job succesfuly",
                    AppColors.primaryBlue,
                  );
                } catch (e) {
                  if (!context.mounted) return;
                  throw HelperMethods.showSnackBar(
                    context,
                    e.toString(),
                    AppColors.colorRed,
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.darkGrey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.w),
                ),
              ),
              child: Text(
                "Save",
                style: AppText.textBold(
                  size: 16,
                  textColor: AppColors.primaryColor,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Expanded _applyButton() {
    return Expanded(
      flex: 3,
      child: SizedBox(
        height: 52.h,
        child: ElevatedButton(
          onPressed: () {
            AutoRouter.of(context).pushNamed(_routes.apply);
            if (overlayEntry != null) overlayEntry!.remove();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.w),
            ),
          ),
          child: Text(
            "Apply now",
            style: AppText.textBold(size: 16),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _showButtons();
    });
    _getUserData();

    super.initState();
  }

  @override
  void dispose() {
    debugPrint("Disposed");
    overlayEntry!.remove();
    super.dispose();
  }
}
