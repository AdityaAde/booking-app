import 'package:bloc/bloc.dart';
import 'package:booking_app/presentation/pages/welcome/login/login_state.dart';

import '../../../../domain/controller/controller.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState().init());
  final AuthController _authController = AuthController();

  void login() {
    _authController.login(
      state.emailController.text,
      state.passwordController.text,
    );
  }
}
