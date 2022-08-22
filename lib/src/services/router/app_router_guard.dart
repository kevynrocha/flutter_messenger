import 'package:auto_route/auto_route.dart';

import '../../core/domain/entities/user_entity.dart';
import 'app_router.dart';

UserEntity? isAuthenticated;

class AppRouterGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (isAuthenticated != null) {
      return resolver.next();
    }

    router.replace(AuthRoute(onResult: (result) {
      router.removeLast();
      resolver.next(result);
    }));
  }
}
