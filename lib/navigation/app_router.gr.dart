// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:flutter_job_boarding/view/home_page.dart' as _i1;
import 'package:flutter_job_boarding/view/job_search_page.dart' as _i2;
import 'package:flutter_job_boarding/view/login_page.dart' as _i3;
import 'package:flutter_job_boarding/view/onboard_page.dart' as _i4;
import 'package:flutter_job_boarding/view/sign_up_page.dart' as _i5;
import 'package:flutter_job_boarding/view/splash_page.dart' as _i6;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    JobSearchRoute.name: (routeData) {
      final args = routeData.argsAs<JobSearchRouteArgs>(
          orElse: () => const JobSearchRouteArgs());
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.JobSearchPage(key: args.key),
      );
    },
    LoginRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginPage(),
      );
    },
    OnBoard.name: (routeData) {
      final args =
          routeData.argsAs<OnBoardArgs>(orElse: () => const OnBoardArgs());
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.OnBoard(key: args.key),
      );
    },
    SignupRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SignupPage(),
      );
    },
    SpashRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SpashPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.JobSearchPage]
class JobSearchRoute extends _i7.PageRouteInfo<JobSearchRouteArgs> {
  JobSearchRoute({
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          JobSearchRoute.name,
          args: JobSearchRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'JobSearchRoute';

  static const _i7.PageInfo<JobSearchRouteArgs> page =
      _i7.PageInfo<JobSearchRouteArgs>(name);
}

class JobSearchRouteArgs {
  const JobSearchRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'JobSearchRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute({List<_i7.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.OnBoard]
class OnBoard extends _i7.PageRouteInfo<OnBoardArgs> {
  OnBoard({
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          OnBoard.name,
          args: OnBoardArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OnBoard';

  static const _i7.PageInfo<OnBoardArgs> page = _i7.PageInfo<OnBoardArgs>(name);
}

class OnBoardArgs {
  const OnBoardArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'OnBoardArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.SignupPage]
class SignupRoute extends _i7.PageRouteInfo<void> {
  const SignupRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SpashPage]
class SpashRoute extends _i7.PageRouteInfo<void> {
  const SpashRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SpashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SpashRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
