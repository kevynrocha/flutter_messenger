import 'package:equatable/equatable.dart';

import '../../../../core/domain/entities/user_entity.dart';

abstract class AuthStates extends Equatable {
  const AuthStates();

  @override
  List<Object?> get props => [];
}

class AuthInitial extends AuthStates {}

class AuthLoading extends AuthStates {}

class AuthSuccess extends AuthStates {
  const AuthSuccess(this.userEntity);

  final UserEntity userEntity;

  @override
  List<Object?> get props => [userEntity];
}

class AuthError extends AuthStates {}
