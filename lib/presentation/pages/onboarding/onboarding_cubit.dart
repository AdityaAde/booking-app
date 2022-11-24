import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingInitial());
}
