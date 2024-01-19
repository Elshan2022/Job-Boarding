import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/repository/service_repository.dart';
import 'package:flutter_job_boarding/view/job_detail_page.dart';

abstract class JobDetailViewModel extends State<JobDetailPage> {
  OverlayEntry? overlayEntry;
  final ServiceRepository serviceRepository = ServiceRepository();
  late final Future<Map<String, dynamic>?> userData;

  Future<void> _getUserData() async {
    userData = serviceRepository.getUserData();
  }

  showButtons() {
    overlayEntry = OverlayEntry(
      builder: (context) {
        return Container(
          height: 50,
          width: 50,
          color: Colors.red,
        );
      },
    );
    Overlay.of(context, debugRequiredFor: widget).insert(overlayEntry!);
  }

  @override
  void initState() {
    _getUserData();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      showButtons();
    }); 
    super.initState();
  }
}
