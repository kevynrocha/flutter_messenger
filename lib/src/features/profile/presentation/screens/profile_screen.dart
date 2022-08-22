import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../services/router/app_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = context.routeData.argsAs<ProfileRouteArgs>();

    return Scaffold(
      body: Container(
        color: Colors.indigo,
        child: Center(child: Text(args.name)),
      ),
    );
  }
}
