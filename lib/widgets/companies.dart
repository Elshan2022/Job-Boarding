import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/gen/assets.gen.dart';
import 'package:flutter_job_boarding/widgets/onboard_logos.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Companies extends StatelessWidget {
  const Companies({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 96.49.h),
        child: Stack(
          children: [
            _airBnb(),
            _meta(),
            _tesla(),
            _goldMan(),
            _microsoft(),
            _apple(),
            _pepsi(),
            _morgan(),
            _google(),
            _swigyy(),
            _uber(),
            _bankOfAmerica(),
            _linkedin(),
            _spotify(),
            _netflix(),
            _amazon(),
          ],
        ),
      ),
    );
  }

  Positioned _amazon() {
    return Positioned(
      top: 420.h,
      right: 60.w,
      child: Transform.rotate(
        angle: 0.1,
        child: Container(
          width: 169.22.w,
          height: 58.33.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(38.89.w),
            color: AppColors.lightGrey,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.icons.amazon.path,
                width: 39.89.w,
                height: 38.89.h,
              ),
              SizedBox(width: 10.w),
              Text(
                "Amazon",
                style: AppText.textMedium(
                  size: 19.44.w,
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Positioned _netflix() {
    return Positioned(
      top: 420.h,
      right: 280.w,
      child: Transform.rotate(
        angle: -0.1,
        child: Container(
          width: 177.84.w,
          height: 70.01.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(38.89.w),
            color: AppColors.lightGrey,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.icons.netflix.path,
                width: 46.67.w,
                height: 46.67.h,
              ),
              SizedBox(width: 10.w),
              Text(
                "Netflix",
                style: AppText.textMedium(
                  size: 23.34.w,
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Positioned _spotify() {
    return Positioned(
      top: 389.h,
      left: 315.w,
      child: Transform.rotate(
        angle: -2.5,
        child: Container(
          width: 158.22.w,
          height: 58.33.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(38.89.w),
            color: AppColors.primaryGreen,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.icons.spotify.path,
                width: 38.89.w,
                height: 38.89.h,
              ),
              SizedBox(width: 10.w),
              Text(
                "Spotify",
                style: AppText.textMedium(
                  size: 19.44.w,
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Positioned _linkedin() {
    return Positioned(
      top: 330.h,
      left: 150.w,
      child: Transform.rotate(
        angle: 0.5,
        child: Container(
          width: 171.22.w,
          height: 58.83.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(38.89.w),
            color: AppColors.lightGrey,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.icons.linkedin.path,
                width: 38.89.w,
                height: 38.89.h,
              ),
              SizedBox(width: 10.w),
              Text(
                "LinkedIn",
                style: AppText.textMedium(
                  size: 19.44.w,
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Positioned _bankOfAmerica() {
    return Positioned(
      top: 350.h,
      right: 220.w,
      child: Transform.rotate(
        angle: 0.2,
        child: Container(
          width: 242.22.w,
          height: 58.33.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(38.89.w),
            color: AppColors.lightGrey,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.icons.bankOfAmerica.path,
                width: 34.03.w,
                height: 34.03.h,
              ),
              SizedBox(width: 10.w),
              Text(
                "Bank of America",
                style: AppText.textMedium(
                  size: 19.44.w,
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Positioned _uber() {
    return Positioned(
      top: 270.h,
      left: 320.w,
      child: Transform.rotate(
        angle: -0.8,
        child: Container(
          width: 118.66.w,
          height: 48.99.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32.66.w),
            color: AppColors.lightGrey,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.icons.uber.path,
                width: 32.66.w,
                height: 32.66.h,
              ),
              SizedBox(width: 10.w),
              Text(
                "Uber",
                style: AppText.textMedium(
                  size: 16.33.w,
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Positioned _swigyy() {
    return Positioned(
      top: 240.h,
      left: 180.w,
      child: Transform.rotate(
        angle: 0.1,
        child: Container(
          width: 161.22.w,
          height: 58.33.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(38.89.w),
            color: AppColors.deepOrange,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.icons.swiggy.path,
                width: 38.89.w,
                height: 39.89.h,
              ),
              SizedBox(width: 10.w),
              Text(
                "Swiggy",
                style: AppText.textMedium(
                  size: 19.44.w,
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Positioned _google() {
    return Positioned(
      top: 250.h,
      right: 260.w,
      child: Transform.rotate(
        angle: -0.1,
        child: Container(
          width: 183.w,
          height: 66.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(44.w),
            color: AppColors.lightGrey,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.icons.google.path,
                width: 44.w,
                height: 44.h,
              ),
              SizedBox(width: 10.w),
              Text(
                "Google",
                style: AppText.textMedium(
                  size: 22.w,
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Positioned _morgan() {
    return Positioned(
      top: 180.h,
      left: 290.w,
      child: Transform.rotate(
        angle: 0.2,
        child: Container(
          width: 133.13.w,
          height: 36.48.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.16.w),
            color: AppColors.lightGrey,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.icons.morgan.path,
                width: 17.64.w,
                height: 17.64.h,
              ),
              SizedBox(width: 10.w),
              Text(
                "J.P. Morgan",
                style: AppText.textBold(
                  size: 12.83.w,
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Positioned _pepsi() {
    return Positioned(
      top: 170.h,
      right: 155.w,
      child: OnBoardLogos(
        angle: -0.1,
        containerColor: AppColors.lightGrey,
        containerHeight: 48.66,
        containerWidth: 142.1,
        iconPath: Assets.icons.pepsi.path,
        text: "PepsiCo",
      ),
    );
  }

  Positioned _apple() {
    return Positioned(
      top: 160.h,
      right: 295.w,
      child: Transform.rotate(
        angle: -0.4,
        child: Container(
          width: 159.17.w,
          height: 63.74.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.16.w),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.icons.apple.path,
                width: 25.73.w,
                height: 30.54.h,
              ),
              SizedBox(width: 10.w),
              Text(
                "Apple",
                style: AppText.textMedium(
                  size: 21.25.w,
                  textColor: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Positioned _microsoft() {
    return Positioned(
      top: 110.h,
      right: 320.w,
      child: Transform.rotate(
        angle: -0.2,
        child: Container(
          width: 260.41.w,
          height: 45.25.h,
          padding: EdgeInsets.only(left: 120.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.16.w),
            color: AppColors.lightGrey,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.icons.microsoft.path,
                width: 16.61.w,
                height: 16.61.h,
              ),
              SizedBox(width: 10.w),
              Text(
                "Microsoft",
                style: AppText.textBold(
                  size: 12.08.w,
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Positioned _goldMan() {
    return Positioned(
      top: 90.h,
      left: 118.1.w,
      child: OnBoardLogos(
        angle: 0.1,
        containerWidth: 235.22.w,
        containerHeight: 58.33.h,
        containerColor: AppColors.lightGrey,
        iconPath: Assets.icons.goldMan.path,
        text: "Gold Man Sachs",
      ),
    );
  }

  Positioned _tesla() {
    return Positioned(
      top: 60.h,
      left: 320.18.w,
      child: OnBoardLogos(
        angle: -1.4,
        containerWidth: 141.22,
        containerHeight: 58.33,
        containerColor: AppColors.colorRed,
        iconPath: Assets.icons.teasla.path,
        text: "Tesla",
      ),
    );
  }

  Positioned _meta() {
    return Positioned(
      top: 10.h,
      left: 215.w,
      child: OnBoardLogos(
        angle: 0.3,
        containerWidth: 141.22,
        containerHeight: 58.33,
        containerColor: AppColors.lightGrey,
        iconPath: Assets.icons.meta.path,
        text: "Meta",
      ),
    );
  }

  Positioned _airBnb() {
    return Positioned(
      top: 5.h,
      left: 40.w,
      child: OnBoardLogos(
        angle: -0.1,
        containerWidth: 166.27,
        containerHeight: 61.97,
        containerColor: AppColors.coralPink,
        iconPath: Assets.icons.airBnb.path,
        text: "Airbnb",
      ),
    );
  }
}
