import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../router/app_router.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = context.routeData.args as AuthRouteArgs;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => args.onResult(true),
              child: const Text('Success'),
            ),
            ElevatedButton(
              onPressed: () => print('falhou'),
              child: const Text('Error'),
            ),
          ],
        ),
      ),
    );
  }
}
