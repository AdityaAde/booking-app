import 'dart:convert';

import '../../config/config.dart';
import '../../data/endpoint/endpoint.dart';
import '../repository/auth_repository.dart';

class AuthController extends AuthRepository {
  final ApiClient _client = ApiClient();

  @override
  Future<BaseResponse> forgotPassword(String email) async {
    late final BaseResponse baseResponse;

    final response = await _client.post(
      Uri.parse(EndPoint.forgotPassword),
      body: {'email': email},
    );

    if (response.statusCode == 200) {
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }

  @override
  Future<BaseResponse> login(String email, String password) async {
    late final BaseResponse baseResponse;

    final response = await _client.post(
      Uri.parse(EndPoint.login),
      body: {
        'email': email,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }

  @override
  Future<void> logout() async {
    await _client.post(Uri.parse(EndPoint.logout), body: {});
  }

  @override
  Future<BaseResponse> register(
      String email, String password, String name) async {
    late final BaseResponse baseResponse;
    final response = await _client.post(
      Uri.parse(EndPoint.register),
      body: {
        'email': email,
        'password': password,
        'name': name,
      },
    );
    if (response.statusCode == 200) {
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }
}
