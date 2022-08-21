import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_messenger/src/features/splash/presentation/controllers/splash_states.dart';

class SplashController extends Cubit<SplashStates> {
  SplashController() : super(SplashLoading());

  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 1));
    emit(SplashSuccess());
  }
}
