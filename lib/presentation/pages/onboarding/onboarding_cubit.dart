import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import '../../../config/router/app_router.dart';
import '../../../utils/helper/pref_helper.dart';
import 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingState().init());

  void next() {
    if (state.currentIndex < state.onboardingList.length - 1) {
      emit(state.clone()..currentIndex = state.currentIndex + 1);
    } else {
      skip();
    }
  }

  void previous() {
    if (state.currentIndex > 0) {
      emit(state.clone()..currentIndex = state.currentIndex - 1);
    }
  }

  void swiping(int index) {
    if (index >= 0 && index < state.onboardingList.length) {
      debugPrint('clog index $index ${state.onboardingList.length}');
      emit(state.clone()..currentIndex = index);
    }
  }

  void skip() {
    PrefHelper.instance.setFirstInstall();
    GetIt.I<AppRouter>().replace(const WelcomeRoute());
  }
}
