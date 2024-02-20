import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/managerView/manager_page.dart';

abstract class ManagerPageViewModel extends State<ManagerPage> {
  late final TextEditingController companyName;
  late final TextEditingController email;
  late final TextEditingController field;
  

  @override
  void initState() {
    super.initState();
    companyName = TextEditingController();
    email = TextEditingController();
    field = TextEditingController();
  }

  @override
  void dispose() {
    companyName.dispose();
    email.dispose();
    super.dispose();
    field.dispose();
  }
}
