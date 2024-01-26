import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/repository/service_repository.dart';
import 'package:flutter_job_boarding/view/job_detail_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class JobDetailViewModel extends State<JobDetailPage> {
  OverlayEntry? overlayEntry;
  final ServiceRepository serviceRepository = ServiceRepository();
  late final Future<Map<String, dynamic>?> userData;

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
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 52.h,
                    child: ElevatedButton(
                      onPressed: () {},
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
                ),
                SizedBox(width: 15.w),
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    height: 52.h,
                    child: ElevatedButton(
                      onPressed: () {},
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
                ),
              ],
            ),
          ),
        );
      },
    );
    Overlay.of(context, debugRequiredFor: widget).insert(overlayEntry!);
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
    overlayEntry!.remove();
    super.dispose();
  }
}
