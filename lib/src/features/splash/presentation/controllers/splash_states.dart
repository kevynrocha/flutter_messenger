import 'package:equatable/equatable.dart';
import 'package:flutter_messenger/src/core/domain/entities/user_entity.dart';

abstract class SplashStates extends Equatable {
  const SplashStates();

  @override
  List<Object?> get props => [];
}

class SplashLoading extends SplashStates {}

class SplashSuccess extends SplashStates {
  const SplashSuccess(this.userEntity);

  final UserEntity userEntity;

  @override
  List<Object?> get props => [userEntity];
}

class SplashError extends SplashStates {}
