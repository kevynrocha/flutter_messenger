import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../services/router/app_router_guard.dart';
import 'splash_states.dart';

class SplashController extends Cubit<SplashStates> {
  SplashController() : super(SplashLoading());

  Future<void> init() async {
    await Future.delayed(const Duration(milliseconds: 500));
    if (isAuthenticated != null) {
      emit(SplashSuccess(isAuthenticated!));
    } else {
      emit(SplashError());
    }
  }
}
