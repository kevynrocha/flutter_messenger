import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';

import '../features/auth/auth_feature.dart';
import '../features/home/home_feature.dart';
import '../features/splash/splash_feature.dart';
import 'app_router_guard.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Feature,Route',
  routes: [
    AutoRoute(page: SplashFeature, initial: true),
    AutoRoute(page: AuthFeature),
    AutoRoute(page: HomeFeature, guards: [AppRouterGuard]),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter({required super.appRouterGuard});
}
