import 'package:flutter/material.dart';

import '../../core/domain/entities/user_entity.dart';
import 'presentation/screens/home_screen.dart';

class HomeFeature extends StatelessWidget {
  const HomeFeature({required this.user, Key? key}) : super(key: key);

  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}
