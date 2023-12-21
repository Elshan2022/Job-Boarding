import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



final randomColorProvider = Provider<Color>(
  (ref) {
    final Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  },
);

final textColorProvider = Provider<Color>((ref) {
  final color = ref.watch(randomColorProvider);
  double luminance = color.computeLuminance();
  if (luminance > 0.2) {
    return AppColors.primaryColor;
  } else {
    return Colors.white;
  }
});
