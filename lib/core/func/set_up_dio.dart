import 'package:api_test/core/api/end_points.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

Dio setUpDio() {
  Dio dio = Dio();
  dio.options.headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer ${EndPoints.apiToken}',
  };
  dio.interceptors.add(
    PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90,
      filter: (options, args) {
        // don't print requests with uris containing '/posts'
        if (options.path.contains('/posts')) {
          return false;
        }
        // don't print responses with unit8 list data
        return !args.isResponse || !args.hasUint8ListData;
      },
    ),
  );

  return dio;
}
