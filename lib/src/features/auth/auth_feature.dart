import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'data/auth_remote_service.dart';
import 'data/auth_repository_impl.dart';
import 'domain/auth_repository.dart';
import 'presentation/controllers/auth_controller.dart';
import 'presentation/screens/auth_screen.dart';

class AuthFeature extends StatelessWidget {
  AuthFeature({
    AuthRepository? repository,
    Key? key,
    this.onResult,
  })  : _repository = repository ??
            AuthRepositoryImpl(
              AuthRemoteService(googleSignIn: GoogleSignIn()),
            ),
        super(key: key);

  final void Function(bool result)? onResult;
  final AuthRepository _repository;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthController(_repository),
      child: const AuthScreen(),
    );
  }
}
