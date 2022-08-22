import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app_widget.dart';
import 'firebase_options.dart';
import 'src/services/router/app_router.dart';
import 'src/services/router/app_router_deep_link.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase App
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // Initialize Routes
  final appRouter = AppRouter();

  // Initialize Deep Linking Listen
  deepLinkListen(appRouter);

  // Initialize App
  runApp(AppWidget(appRouter: appRouter));
}
