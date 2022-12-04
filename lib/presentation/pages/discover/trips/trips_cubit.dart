import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

part 'trips_state.dart';

class TripsCubit extends Cubit<TripsState> {
  TripsCubit() : super(TripsInitial());
}
