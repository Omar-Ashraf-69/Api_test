import 'package:api_test/core/errors/failure.dart';
import 'package:dio/dio.dart';


class ServerFailure extends Failure {
  const ServerFailure(super.errorMessage);

}

class DioFailure {
  static ServerFailure fromDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return const ServerFailure("Connection timeout");

      case DioExceptionType.sendTimeout:
        return const ServerFailure("Send timeout");

      case DioExceptionType.receiveTimeout:
        return const ServerFailure("Receive timeout");

      case DioExceptionType.badResponse:
        return _handleResponse(
          e.response?.statusCode,
          e.response?.data,
        );

      case DioExceptionType.cancel:
        return const ServerFailure("Request cancelled");

      case DioExceptionType.connectionError:
        return const ServerFailure("No Internet");

      default:
        return const ServerFailure("Unexpected error");
    }
  }

  static ServerFailure _handleResponse(
      int? statusCode,
      dynamic data,
  ) {
    switch (statusCode) {
      case 400:
        return ServerFailure(data["message"]);

      case 401:
        return const ServerFailure("Unauthorized");

      case 404:
        return const ServerFailure("Not found");

      case 500:
        return const ServerFailure("Internal server error");

      default:
        return const ServerFailure("Something went wrong");
    }
  }
}