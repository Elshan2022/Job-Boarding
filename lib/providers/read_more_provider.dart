// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_job_boarding/model/job_model.dart';

final isExpandProvider = StateProvider<bool>((ref) {
  return false;
});

class ReadMoreNotifier extends StateNotifier<String> {
  ReadMoreNotifier(
    this.index,
    this.ref,
  ) : super(JobModel.jobList[index].description);

  final int index;
  final Ref ref;

  showMore(int index, List<JobModel> jobs) {
    final isExpand = ref.watch(isExpandProvider.notifier);
    if (isExpand.state == true) {
      state = jobs[index].description;
      isExpand.state = false;
    } else {
      state = jobs[index].description.substring(0, 100);
      isExpand.state = true;
    }
  }
}

final readMoreProvider =
    StateNotifierProvider.family<ReadMoreNotifier, String, int>((ref, index) {
  return ReadMoreNotifier(index, ref);
});
