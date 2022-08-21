import 'package:flutter/material.dart';

import 'presentation/screens/home_screen.dart';

class HomeFeature extends StatelessWidget {
  const HomeFeature({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}
