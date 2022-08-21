import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../router/app_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = context.routeData.args as HomeRouteArgs;

    return Scaffold(
      body: Container(
        color: Colors.indigo,
        child: Center(child: Text(args.name)),
      ),
    );
  }
}
