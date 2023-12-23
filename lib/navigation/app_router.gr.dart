// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:flutter_job_boarding/view/home_page.dart' as _i1;
import 'package:flutter_job_boarding/view/login_page.dart' as _i2;
import 'package:flutter_job_boarding/view/onboard_page.dart' as _i3;
import 'package:flutter_job_boarding/view/sign_up_page.dart' as _i4;
import 'package:flutter_job_boarding/view/splash_page.dart' as _i5;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.HomePage(key: args.key),
      );
    },
    LoginRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginPage(),
      );
    },
    OnBoard.name: (routeData) {
      final args =
          routeData.argsAs<OnBoardArgs>(orElse: () => const OnBoardArgs());
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.OnBoard(key: args.key),
      );
    },
    SignupRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SignupPage(),
      );
    },
    SpashRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SpashPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i6.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i7.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i6.PageInfo<HomeRouteArgs> page =
      _i6.PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.OnBoard]
class OnBoard extends _i6.PageRouteInfo<OnBoardArgs> {
  OnBoard({
    _i7.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          OnBoard.name,
          args: OnBoardArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OnBoard';

  static const _i6.PageInfo<OnBoardArgs> page = _i6.PageInfo<OnBoardArgs>(name);
}

class OnBoardArgs {
  const OnBoardArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'OnBoardArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.SignupPage]
class SignupRoute extends _i6.PageRouteInfo<void> {
  const SignupRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SpashPage]
class SpashRoute extends _i6.PageRouteInfo<void> {
  const SpashRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SpashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SpashRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
