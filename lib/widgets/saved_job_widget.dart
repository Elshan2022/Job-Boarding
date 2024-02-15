import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/model/job_model.dart';
import 'package:flutter_job_boarding/repository/service_repository.dart';
import 'package:flutter_job_boarding/widgets/jobs_list_view.dart';

class SavedJobsWidget extends StatelessWidget {
  SavedJobsWidget({super.key});

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

        return _getWidget(snapshot, context);
      },
    );
  }
}

_getWidget(AsyncSnapshot<List<JobModel>> snapshot, BuildContext context) {
  final height = MediaQuery.of(context).size.height;

  return snapshot.data!.isEmpty
      ? Center(
          child: Container(
            margin: EdgeInsets.only(top: height * 0.26),
            child: Text(
              "You don't have any saved job",
              style: AppText.textBold(fontSize: 20),
            ),
          ),
        )
      : JobsListView(jobs: snapshot.data!);
}
