import 'package:flutter/material.dart';

import 'presentation/screens/profile_screen.dart';

class ProfileFeature extends StatelessWidget {
  const ProfileFeature({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return const ProfileScreen();
  }
}
