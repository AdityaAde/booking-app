import 'dart:convert';

import '../../config/config.dart';
import '../../data/endpoint/endpoint.dart';
import '../repository/trip_repository.dart';

class TripController implements TripRepository {
  final ApiClient _client = ApiClient();

  @override
  Future<BaseResponse> detailTrips(int id) async {
    late final BaseResponse baseResponse;
    final response = await _client.get(
      Uri.parse("${EndPoint.trip}/$id"),
    );
    if (response.statusCode == 200) {
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }

  @override
  Future<BaseResponse> getTrips() async {
    late final BaseResponse baseResponse;
    final response = await _client.get(
      Uri.parse(EndPoint.trip),
    );
    if (response.statusCode == 200) {
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }
}
