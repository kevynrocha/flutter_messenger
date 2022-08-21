import 'package:equatable/equatable.dart';

abstract class SplashStates extends Equatable {
  const SplashStates();

  @override
  List<Object?> get props => [];
}

class SplashLoading extends SplashStates {}

class SplashSuccess extends SplashStates {}

class SplashError extends SplashStates {}
