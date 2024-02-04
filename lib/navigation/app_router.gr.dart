// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:flutter_job_boarding/view/apply_page.dart' as _i1;
import 'package:flutter_job_boarding/view/home_page.dart' as _i2;
import 'package:flutter_job_boarding/view/job_detail_page.dart' as _i3;
import 'package:flutter_job_boarding/view/job_search_page.dart' as _i4;
import 'package:flutter_job_boarding/view/login_page.dart' as _i5;
import 'package:flutter_job_boarding/view/onboard_page.dart' as _i6;
import 'package:flutter_job_boarding/view/sign_up_page.dart' as _i7;
import 'package:flutter_job_boarding/view/splash_page.dart' as _i8;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    ApplyRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ApplyPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    JobDetailRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.JobDetailPage(),
      );
    },
    JobSearchRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.JobSearchPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginPage(),
      );
    },
    OnBoard.name: (routeData) {
      final args =
          routeData.argsAs<OnBoardArgs>(orElse: () => const OnBoardArgs());
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.OnBoard(key: args.key),
      );
    },
    SignupRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SignupPage(),
      );
    },
    SpashRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SpashPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.ApplyPage]
class ApplyRoute extends _i9.PageRouteInfo<void> {
  const ApplyRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ApplyRoute.name,
          initialChildren: children,
        );

  static const String name = 'ApplyRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.JobDetailPage]
class JobDetailRoute extends _i9.PageRouteInfo<void> {
  const JobDetailRoute({List<_i9.PageRouteInfo>? children})
      : super(
          JobDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'JobDetailRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.JobSearchPage]
class JobSearchRoute extends _i9.PageRouteInfo<void> {
  const JobSearchRoute({List<_i9.PageRouteInfo>? children})
      : super(
          JobSearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'JobSearchRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute({List<_i9.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.OnBoard]
class OnBoard extends _i9.PageRouteInfo<OnBoardArgs> {
  OnBoard({
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          OnBoard.name,
          args: OnBoardArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OnBoard';

  static const _i9.PageInfo<OnBoardArgs> page = _i9.PageInfo<OnBoardArgs>(name);
}

class OnBoardArgs {
  const OnBoardArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'OnBoardArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.SignupPage]
class SignupRoute extends _i9.PageRouteInfo<void> {
  const SignupRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SpashPage]
class SpashRoute extends _i9.PageRouteInfo<void> {
  const SpashRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SpashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SpashRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
