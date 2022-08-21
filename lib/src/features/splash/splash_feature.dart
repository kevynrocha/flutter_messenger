import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_messenger/src/features/splash/presentation/screens/splash_screen.dart';

import 'presentation/controllers/splash_controller.dart';

class SplashFeature extends StatelessWidget {
  const SplashFeature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SplashController()..init(),
      child: const SplashScreen(),
    );
  }
}
