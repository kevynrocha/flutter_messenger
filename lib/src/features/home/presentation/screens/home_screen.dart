import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../services/router/app_router.dart';
import '../../../../services/router/app_router_guard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = context.routeData.argsAs<HomeRouteArgs>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Messenger'),
        actions: [
          IconButton(
            onPressed: () {
              isAuthenticated = null;
              context.router.replace(AuthRoute());
            },
            icon: const Icon(Icons.close),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => ListTile(
          title: const Text('Amor *-*'),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(args.user.photoUrl!),
          ),
          trailing: Column(children: const [Text('Text'), Text('Text')]),
          onTap: () => context.router.navigate(const ChatRoute()),
        ),
      ),
    );
  }
}
