import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

part 'welcome_state.dart';

class WelcomeCubit extends Cubit<WelcomeState> {
  WelcomeCubit() : super(WelcomeInitial());
}
