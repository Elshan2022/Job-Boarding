import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/repository/service_repository.dart';
import 'package:flutter_job_boarding/widgets/jobs_list_view.dart';

class SavedJobsWidget extends StatefulWidget {
  const SavedJobsWidget({super.key});

  @override
  State<SavedJobsWidget> createState() => _SavedJobsWidgetState();
}

class _SavedJobsWidgetState extends State<SavedJobsWidget> {
  final ServiceRepository _service = ServiceRepository();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _service.getSavedJobs(),
      builder: (context, snapshot) {
        final hasError = snapshot.hasError;
        final isLoading = snapshot.connectionState == ConnectionState.waiting;

        if (hasError) {
          return Text(
            snapshot.error.toString(),
            style: const TextStyle(color: Colors.white),
          );
        }

        if (isLoading) {
          return const Center(
            child: CircularProgressIndicator(color: Colors.white),
          );
        }

        return JobsListView(jobs: snapshot.data!);
      },
    );
  }
}
