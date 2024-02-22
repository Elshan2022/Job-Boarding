import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/managerView/manager_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class ManagerPageViewModel extends ConsumerState<ManagerPage> {
  late final TextEditingController companyName;
  late final TextEditingController email;
  late final TextEditingController field;
  late final TextEditingController country;

  @override
  void initState() {
    super.initState();
    companyName = TextEditingController();
    email = TextEditingController();
    field = TextEditingController();
    country = TextEditingController();
  }

  @override
  void dispose() {
    companyName.dispose();
    email.dispose();
    super.dispose();
    field.dispose();
    country.dispose();
  }
}
