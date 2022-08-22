import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../services/router/app_router.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs = context.routeData.args != null
        ? context.routeData.argsAs<AuthRouteArgs>()
        : null;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                if (routeArgs?.onResult != null) {
                  routeArgs?.onResult!(true);
                }
              },
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
