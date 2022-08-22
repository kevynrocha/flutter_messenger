import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../services/router/app_router.dart';
import '../controllers/auth_controller.dart';
import '../controllers/auth_states.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = context.read<AuthController>();
    final routeArgs = context.routeData.argsAs<AuthRouteArgs>(
      orElse: () => const AuthRouteArgs(),
    );

    return BlocConsumer<AuthController, AuthStates>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          routeArgs.onResult != null
              ? routeArgs.onResult!(true)
              : context.router.replace(HomeRoute(user: state.userEntity));
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.amber,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: controller.signUp,
                  label: const Text('Sign up with Google'),
                  icon: const Icon(Icons.g_mobiledata),
                ),
                const SizedBox(height: 50),
                if (state is AuthLoading) const CircularProgressIndicator()
              ],
            ),
          ),
        );
      },
    );
  }
}
