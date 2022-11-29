import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
}
