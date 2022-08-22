import 'package:flutter_messenger/src/features/auth/data/auth_service.dart';

import '../../../core/data/models/user_model.dart';
import '../../../core/domain/entities/user_entity.dart';
import '../domain/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl(this.service);

  final AuthService service;

  @override
  Future<UserEntity?> signWithGoogle() async {
    final googleAccount = await service.signWithGoogle();

    if (googleAccount != null) {
      return UserModel.fromGoogleAccount(googleAccount);
    }

    return null;
  }
}
