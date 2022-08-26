import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';

import '../../core/domain/entities/user_entity.dart';
import '../../features/auth/domain/auth_repository.dart';
import '../../features/features.dart';
import 'app_router_guard.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Feature,Route',
  routes: [
    AutoRoute(
      page: SplashFeature,
      initial: true,
    ),
    CustomRoute(
      page: AuthFeature,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: HomeFeature,
      guards: [AppRouterGuard],
      path: '/home',
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: ProfileFeature,
      guards: [AppRouterGuard],
      path: '/profile',
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: ChatFeature,
      guards: [AppRouterGuard],
      path: '/chat',
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter() : super(appRouterGuard: AppRouterGuard());
}
