import '../../config/config.dart';

abstract class TripRepository {
  Future<BaseResponse> detailTrips(int id);

  Future<BaseResponse> getTrips();
}
