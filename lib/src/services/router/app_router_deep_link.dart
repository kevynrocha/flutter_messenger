import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_messenger/src/core/data/models/user_model.dart';
import 'package:uni_links/uni_links.dart';

import 'app_router.dart';

StreamSubscription<dynamic> deepLinkListen(AppRouter appRouter) {
  return linkStream.listen((link) {
    try {
      final uri = Uri.parse(link!);
      appRouter.replace(_routes(uri));
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
