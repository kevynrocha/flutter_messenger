import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../services/router/app_router.dart';
import '../../../../services/router/app_router_guard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigo,
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              isAuthenticated = null;
              context.router.replace(AuthRoute());
            },
            child: const Text('Sign out'),
          ),
        ),
      ),
    );
  }
}
