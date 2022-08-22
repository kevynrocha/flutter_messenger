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
      final args =
          routeData.argsAs<AuthRouteArgs>(orElse: () => const AuthRouteArgs());
      return CustomPage<dynamic>(
          routeData: routeData,
          child: AuthFeature(
              repository: args.repository,
              key: args.key,
              onResult: args.onResult),
          transitionsBuilder: TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    HomeRoute.name: (routeData) {
      final args = routeData.argsAs<HomeRouteArgs>();
      return CustomPage<dynamic>(
          routeData: routeData,
          child: HomeFeature(user: args.user, key: args.key),
          transitionsBuilder: TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>();
      return CustomPage<dynamic>(
          routeData: routeData,
          child: ProfileFeature(key: args.key, name: args.name),
          transitionsBuilder: TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashRoute.name, path: '/'),
        RouteConfig(AuthRoute.name, path: '/auth-feature'),
        RouteConfig(HomeRoute.name, path: '/home', guards: [appRouterGuard]),
        RouteConfig(ProfileRoute.name,
            path: '/profile', guards: [appRouterGuard])
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
  AuthRoute(
      {AuthRepository? repository, Key? key, void Function(bool)? onResult})
      : super(AuthRoute.name,
            path: '/auth-feature',
            args: AuthRouteArgs(
                repository: repository, key: key, onResult: onResult));

  static const String name = 'AuthRoute';
}

class AuthRouteArgs {
  const AuthRouteArgs({this.repository, this.key, this.onResult});

  final AuthRepository? repository;

  final Key? key;

  final void Function(bool)? onResult;

  @override
  String toString() {
    return 'AuthRouteArgs{repository: $repository, key: $key, onResult: $onResult}';
  }
}

/// generated route for
/// [HomeFeature]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({required UserEntity user, Key? key})
      : super(HomeRoute.name,
            path: '/home', args: HomeRouteArgs(user: user, key: key));

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({required this.user, this.key});

  final UserEntity user;

  final Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{user: $user, key: $key}';
  }
}

/// generated route for
/// [ProfileFeature]
class ProfileRoute extends PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({Key? key, required String name})
      : super(ProfileRoute.name,
            path: '/profile', args: ProfileRouteArgs(key: key, name: name));

  static const String name = 'ProfileRoute';
}

class ProfileRouteArgs {
  const ProfileRouteArgs({this.key, required this.name});

  final Key? key;

  final String name;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, name: $name}';
  }
}
