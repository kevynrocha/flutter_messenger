import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../services/router/app_router.dart';
import '../controllers/splash_controller.dart';
import '../controllers/splash_states.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashController, SplashStates>(
      listener: (context, state) {
        if (state is SplashSuccess) {
          context.router.push(const HomeRoute());
        }
      },
      child: Scaffold(
        body: Container(
          color: Colors.amber,
          alignment: Alignment.center,
          child: const FlutterLogo(size: 150),
        ),
      ),
    );
  }
}
