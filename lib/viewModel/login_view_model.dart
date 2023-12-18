import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/navigation/routes_name.dart';
import 'package:flutter_job_boarding/view/login_page.dart';

abstract class LoginViewModel extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<double> animation;
  final Duration _duration = const Duration(seconds: 2);
  final RoutesNames routesNames = RoutesNames();

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: _duration);
    animation =
        CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn);

    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }
}
