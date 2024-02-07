import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/providers/categorie_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategorieWidget extends ConsumerWidget {
  CategorieWidget({super.key});
  final List<String> _categories = ["Discover", "Saved", "Applied", "Discart"];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(selectedCategoryProvider);
    return Container(
      margin: EdgeInsets.only(top: 20.h, bottom: 24.h),
      height: 45.h,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _categories.asMap().entries.map((entry) {
          final index = entry.key;
          final category = entry.value;
          return InkWell(
            onTap: () {
              ref.read(selectedCategoryProvider.notifier).selectCategory(index);
            },
            child: Container(
              width: 89.w,
              height: 43.h,
              margin: EdgeInsets.only(right: 10.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.w),
                color: selectedIndex == index
                    ? AppColors.primaryBlue
                    : AppColors.darkGrey,
              ),
              child: Center(
                child: Text(
                  category,
                  style: AppText.textBold(
                    size: 14,
                    textColor: selectedIndex == index
                        ? Colors.white
                        : AppColors.primaryColor,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}


/* Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _categories.asMap().entries.map((entry) {
          final index = entry.key;
          final category = entry.value;
          return InkWell(
            onTap: () {
              ref.read(selectedCategoryProvider.notifier).selectCategory(index);
            },
            child: Container(
              width: 89.w,
              height: 43.h,
              margin: EdgeInsets.only(right: 10.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.w),
                color: selectedIndex == index
                    ? AppColors.primaryBlue
                    : AppColors.darkGrey,
              ),
              child: Center(
                child: Text(
                  category,
                  style: AppText.textBold(
                    size: 14,
                    textColor: selectedIndex == index
                        ? Colors.white
                        : AppColors.primaryColor,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ) */
