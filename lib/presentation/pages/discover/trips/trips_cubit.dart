import 'package:bloc/bloc.dart';
import 'package:booking_app/config/config.dart';
import 'package:booking_app/presentation/pages/discover/trips/trips_state.dart';
import 'package:logging/logging.dart';

import '../../../../domain/controller/controller.dart';

class TripsCubit extends Cubit<TripsState> implements HttpState {
  TripsCubit() : super(TripsState().init());

  late final TripController _tripController = TripController(this);

  void getTrips() async {
    final trips = await _tripController.getTrips();
    emit(
      state.clone()
        ..yourRoomies = trips.result?.yourRoomies ?? []
        ..otherMatches = trips.result?.otherMatches ?? [],
    );
    Logger.root.info(
      'TripsCubit getTrips ${state.yourRoomies.length} ${state.otherMatches.length}',
    );
  }

  @override
  void onEndRequest(String url, String method) {
    // emit(
    //     state.clone()
    //       ..status = HttpStateStatus.idle
    // );
  }

  @override
  void onErrorRequest(String url, String method) {
    Logger.root.info('TripsCubit onErrorRequest');
    emit(state.clone()..status = HttpStateStatus.error);
  }

  @override
  void onStartRequest(String url, String method) {
    emit(state.clone()..status = HttpStateStatus.loading);
  }

  @override
  void onSuccessRequest(String url, String method) {
    emit(state.clone()..status = HttpStateStatus.success);
  }
}
