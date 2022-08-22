import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_messenger/src/features/auth/domain/auth_repository.dart';
import 'package:flutter_messenger/src/services/router/app_router_guard.dart';

import 'auth_states.dart';

class AuthController extends Cubit<AuthStates> {
  AuthController(AuthRepository repository)
      : _repository = repository,
        super(AuthInitial());

  final AuthRepository _repository;

  Future<void> signUp() async {
    try {
      emit(AuthLoading());

      final user = await _repository.signWithGoogle();

      if (user != null) {
        isAuthenticated = user;
        return emit(AuthSuccess(user));
      }
    } on Exception {
      emit(AuthError());
    }
  }
}
