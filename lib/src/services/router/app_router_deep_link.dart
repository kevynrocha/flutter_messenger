import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:uni_links/uni_links.dart';

import '../../core/data/models/user_model.dart';
import 'app_router.dart';

Future<void> initialDeepLink(AppRouter appRouter) async {
  try {
    final uri = await getInitialUri();
    appRouter.replace(_routes(uri!));
  } catch (e) {
    appRouter.replace(const SplashRoute());
  }
}

StreamSubscription<Uri?> deepLinkListen(AppRouter appRouter) {
  return uriLinkStream.listen((uri) {
    try {
      appRouter.replace(_routes(uri!));
    } catch (e) {
      appRouter.replace(const SplashRoute());
    }
  });
}

PageRouteInfo _routes(Uri uri) {
  switch (uri.authority) {
    case 'profile':
      return ProfileRoute(name: uri.queryParameters['name']!);
    case 'home':
      return HomeRoute(user: UserModel.fromJson(uri.queryParameters));
    default:
      return HomeRoute(user: UserModel.fromJson(uri.queryParameters));
  }
}
