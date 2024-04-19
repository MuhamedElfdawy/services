import 'package:dio/dio.dart';

class LoginModel {
  Future<String> login({
    required String email,
    required String password,
  }) async {
    var dio = Dio(
      BaseOptions(
        receiveDataWhenStatusError: true,
        validateStatus: (status) => true,
      ),
    );
    final response = await dio.post('https://localhost:7033/api/Auth/Login', data: {
      'userName': email,
      'password': password,
    });

    print(response.data);
    return response.data;
  }
}