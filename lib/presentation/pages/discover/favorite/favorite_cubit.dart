import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

part 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(FavoriteInitial());
}
