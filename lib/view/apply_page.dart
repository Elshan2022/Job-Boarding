import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';

@RoutePage()
class ApplyPage extends StatelessWidget {
  const ApplyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Text("Apply job page"),
      ),
    );
  }
}
