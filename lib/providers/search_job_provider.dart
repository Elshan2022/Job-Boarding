

import 'package:flutter_job_boarding/model/job_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final allJobsProvider = Provider<List<JobModel>>((ref) {
  return JobModel.jobList;
});

final searchJobProvider =
    Provider.family.autoDispose<List<JobModel>, String>((ref, query) {
  final jobs = ref.watch(allJobsProvider);
  final queryTitle = query.toLowerCase();
  final searchList = jobs.where((element) {
    final title = element.jobTitle.toLowerCase();
    return title.contains(queryTitle);
  }).toList();

  return searchList;
});
