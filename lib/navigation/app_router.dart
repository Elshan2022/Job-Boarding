import 'package:auto_route/auto_route.dart';
import 'package:flutter_job_boarding/navigation/routes_name.dart';
import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  final routesNames = RoutesNames();
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: OnBoard.page, path: routesNames.onBoard),
        AutoRoute(page: LoginRoute.page, path: routesNames.login),
        AutoRoute(page: SignUpRoute.page, path: routesNames.signUp),
        AutoRoute(
            page: HomeRoute.page, path: routesNames.homePage, initial: true),
        AutoRoute(page: SplashRoute.page, path: routesNames.splash),
        AutoRoute(page: JobSearchRoute.page, path: routesNames.search),
        AutoRoute(page: JobDetailRoute.page, path: routesNames.jobDetail),
      ];
}
