import 'package:flutter/material.dart';

import 'presentation/screens/auth_screen.dart';

class AuthFeature extends StatelessWidget {
  const AuthFeature({Key? key, this.onResult}) : super(key: key);

  final void Function(bool result)? onResult;

  @override
  Widget build(BuildContext context) {
    return const AuthScreen();
  }
}
