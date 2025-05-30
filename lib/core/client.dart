import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio = Dio(
    BaseOptions(baseUrl: "http://192.168.100.82:8888/api/v1"),
  );

  Future<T> getGenericRequest<T>(
    String path,
      {Map<String, dynamic>? queryParams}
  ) async {
    final response = await dio.get(path, queryParameters: queryParams);
    if (response.statusCode == 200) {
      return response.data as T;
    } else {
      throw Exception(
        "GET: $path, ${queryParams.toString()} - ${response.statusCode} - ${response.data}",
      );
    }
  }
}
