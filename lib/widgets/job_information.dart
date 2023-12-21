import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/providers/random_color_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JobInformation extends ConsumerWidget {
  const JobInformation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final randomColor = ref.watch(randomColorProvider);
    final textColor = ref.watch(textColorProvider);
    return Expanded(
      flex: 2,
      child: ClipPath(
        clipper: MyClipper(),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: randomColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.w),
              topRight: Radius.circular(15.w),
            ),
          ),
          child: Column(
            children: [
              Text(
                "Project Manager",
                style: AppText.textBold(
                  size: 16,
                  textColor: textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 1.0060769, size.height * 0.3591176);
    path_0.quadraticBezierTo(size.width * 1.0061538, size.height * 0.9053529,
        size.width, size.height);
    path_0.lineTo(0, size.height);
    path_0.lineTo(0, 0);
    path_0.quadraticBezierTo(size.width * 0.5522051, size.height * -0.0142941,
        size.width * 0.7172821, size.height * -0.0117059);
    path_0.cubicTo(
        size.width * 0.7818462,
        size.height * 0.1028235,
        size.width * 0.6324359,
        size.height * 0.4820000,
        size.width * 1.0060769,
        size.height * 0.3591176);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
