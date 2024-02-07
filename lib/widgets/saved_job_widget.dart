import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/helper_methods.dart';
import 'package:flutter_job_boarding/model/job_model.dart';
import 'package:flutter_job_boarding/repository/service_repository.dart';
import 'package:flutter_job_boarding/widgets/jobs_list_view.dart';

class SavedJobsWidget extends StatefulWidget {
  const SavedJobsWidget({super.key});

  @override
  State<SavedJobsWidget> createState() => _SavedJobsWidgetState();
}

class _SavedJobsWidgetState extends State<SavedJobsWidget> {
  final ServiceRepository _service = ServiceRepository();
    Future<List<JobModel>>? getSaved;
  Future<void> _getSavedJobs() async {
    getSaved = _service.getSavedJobs();
  }

  @override
  void initState() {
    super.initState();
    _getSavedJobs();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<JobModel>>(
      future: getSaved,
      builder: (context, snapshot) {
        final hasData = snapshot.hasData;
        final isDone = snapshot.connectionState == ConnectionState.done;
        if (hasData && isDone) {
          return JobsListView(jobs: snapshot.data!);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
