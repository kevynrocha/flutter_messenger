import '../../../core/domain/entities/user_entity.dart';

abstract class AuthRepository {
  Future<UserEntity?> signWithGoogle();
}
