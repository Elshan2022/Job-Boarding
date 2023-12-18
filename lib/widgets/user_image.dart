import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/gen/assets.gen.dart';
import 'package:flutter_job_boarding/providers/user_image_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserImage extends ConsumerWidget {
  const UserImage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final image = ref.watch(userImageProvider);

    return InkWell(
      onTap: () async {
        await ref.read(userImageProvider.notifier).selectImageFromGallery();
      },
      child: Align(
        alignment: Alignment.topCenter,
        child: Center(
          child: Container(
            width: 100.w,
            height: 100.w,
            decoration: BoxDecoration(
              color: AppColors.darkGrey,
              borderRadius: BorderRadius.circular(15.w),
              image: image == null
                  ? DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        Assets.icons.userImage.path,
                      ),
                    )
                  : DecorationImage(
                      image: FileImage(image),
                      fit: BoxFit.cover,
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
