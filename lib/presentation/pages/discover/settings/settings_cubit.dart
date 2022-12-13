import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsInitial());
}
