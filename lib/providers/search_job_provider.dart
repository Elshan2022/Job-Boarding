import 'package:flutter_job_boarding/model/job_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final jobsProvider = Provider<List<JobModel>>((ref) {
  return JobModel.jobList;
});

class JobSearchNotifier extends StateNotifier<List<JobModel>> {
  JobSearchNotifier(this.ref) : super([]);

  final Ref ref;

  searchJob(String query) {
    final allJobs = ref.watch(jobsProvider);
    final searchList = allJobs.where((element) {
      final job = element.field.toLowerCase();
      final queryJob = query.toLowerCase();

      return job.contains(queryJob);
    }).toList();

    state = searchList;
  }
}

final jobSearchProvider =
    StateNotifierProvider.autoDispose<JobSearchNotifier, List<JobModel>>(
  (ref) {
    return JobSearchNotifier(ref);
  },
);
