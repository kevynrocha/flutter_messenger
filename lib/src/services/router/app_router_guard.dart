import 'package:auto_route/auto_route.dart';

import 'app_router.dart';

const bool isAuthenticated = false;

class AppRouterGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (isAuthenticated) {
      return resolver.next();
    }

    router.replace(AuthRoute(onResult: (result) {
      router.removeLast();
      resolver.next(result);
    }));
  }
}
