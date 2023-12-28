import 'package:flutter_job_boarding/model/job_model.dart';
import 'package:flutter_job_boarding/widgets/jobs_list_view.dart';
import 'package:flutter/material.dart';

abstract class JobListViewModel extends State<JobsListView>
    with SingleTickerProviderStateMixin {
  List<JobModel> jobsList = JobModel.jobList;

  late final AnimationController controller;
  late final Animation<double> animation;

  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 3000))
      ..forward();
    animation =
        CurvedAnimation(parent: controller, curve: Curves.easeInOutQuad);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
