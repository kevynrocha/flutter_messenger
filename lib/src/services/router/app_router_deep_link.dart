import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:uni_links/uni_links.dart';

import 'app_router.dart';

StreamSubscription<dynamic> deepLinkListen(AppRouter appRouter) {
  return linkStream.listen((link) {
    try {
      final uri = Uri.parse(link!);
      appRouter.replace(_routes(uri));
    } catch (e) {
      appRouter.replace(const HomeRoute());
    }
  });
}

PageRouteInfo _routes(Uri uri) {
  switch (uri.authority) {
    case 'profile':
      return ProfileRoute(name: uri.queryParameters['name']!);
    case 'home':
      return const HomeRoute();
    default:
      return const HomeRoute();
  }
}
