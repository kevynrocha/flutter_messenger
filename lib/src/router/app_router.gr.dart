// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter(
      {GlobalKey<NavigatorState>? navigatorKey, required this.appRouterGuard})
      : super(navigatorKey);

  final AppRouterGuard appRouterGuard;

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const SplashFeature());
    },
    AuthRoute.name: (routeData) {
      final args = routeData.argsAs<AuthRouteArgs>();
      return AdaptivePage<dynamic>(
          routeData: routeData,
          child: AuthFeature(key: args.key, onResult: args.onResult));
    },
    HomeRoute.name: (routeData) {
      final args = routeData.argsAs<HomeRouteArgs>();
      return AdaptivePage<dynamic>(
          routeData: routeData,
          child: HomeFeature(key: args.key, name: args.name));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashRoute.name, path: '/'),
        RouteConfig(AuthRoute.name, path: '/auth-feature'),
        RouteConfig(HomeRoute.name,
            path: '/home-feature', guards: [appRouterGuard])
      ];
}

/// generated route for
/// [SplashFeature]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [AuthFeature]
class AuthRoute extends PageRouteInfo<AuthRouteArgs> {
  AuthRoute({Key? key, required void Function(bool) onResult})
      : super(AuthRoute.name,
            path: '/auth-feature',
            args: AuthRouteArgs(key: key, onResult: onResult));

  static const String name = 'AuthRoute';
}

class AuthRouteArgs {
  const AuthRouteArgs({this.key, required this.onResult});

  final Key? key;

  final void Function(bool) onResult;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, onResult: $onResult}';
  }
}

/// generated route for
/// [HomeFeature]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({Key? key, required String name})
      : super(HomeRoute.name,
            path: '/home-feature', args: HomeRouteArgs(key: key, name: name));

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key, required this.name});

  final Key? key;

  final String name;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, name: $name}';
  }
}
