import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/userView/home_page.dart';
import 'package:flutter_job_boarding/managerView/manager_page.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [HomePage(), ManagerPage()],
    );
  }
}
