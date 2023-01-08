import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';

import '../../../../config/config.dart';
import '../../../../config/router/app_router.dart';
import '../../../../domain/controller/controller.dart';
import '../../../../utils/helper/pref_helper.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> implements HttpState {
  LoginCubit() : super(LoginState().init());
  late final AuthController _authController = AuthController(this);

  void login() async {
    BaseResponse baseResponse = await _authController.login(
      state.emailController.text,
      state.passwordController.text,
    );
    PrefHelper.instance.saveToken(baseResponse.result?.login?.token ?? "");
    Logger.root.info("TOKENKU ${PrefHelper.instance.token}");
    if (baseResponse.result?.login?.token != null) {
      GetIt.I<AppRouter>().replace(const DiscoverRoute());
    }
  }

  @override
  void onEndRequest(String url, String method) {
    Logger.root.info("onEndRequest $url $method");
  }

  @override
  void onErrorRequest(String url, String method) {
    Logger.root.info("onErrorRequest $url $method");
    emit(state.clone()..httpStateStatus = HttpStateStatus.error);
  }

  @override
  void onStartRequest(String url, String method) {
    Logger.root.info("onStartRequest $url $method");
    emit(state.clone()..httpStateStatus = HttpStateStatus.loading);
  }

  @override
  void onSuccessRequest(String url, String method) {
    Logger.root.info("onSuccessRequest $url $method");
    emit(state.clone()..httpStateStatus = HttpStateStatus.success);
  }
}
