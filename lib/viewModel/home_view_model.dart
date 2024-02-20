import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/model/job_model.dart';
import 'package:flutter_job_boarding/repository/service_repository.dart';
import 'package:flutter_job_boarding/userView/home_page.dart';

abstract class HomeViewModel extends State<HomePage> {
  final List<JobModel> jobs = JobModel.jobList;
  final ServiceRepository _serviceRepository = ServiceRepository();
  late final Future<Map<String, dynamic>?> userData;

  Future<void> _getUserData() async {
    userData = _serviceRepository.getUserData();
  }

  @override
  void initState() {
    _getUserData();
    super.initState();
  }
}
