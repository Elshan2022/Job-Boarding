import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserNameImage extends StatelessWidget {
  const UserNameImage(
      {super.key, required this.userName, required this.imageUrl});
  final String userName;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Hello $userName  👋 ",
          style: AppText.textBold(
            fontSize: 20,
            textColor: Colors.white,
          ),
        ),
        Container(
          width: 40.w,
          height: 40.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(imageUrl),
            ),
          ),
        ),
      ],
    );
  }
}
