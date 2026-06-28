import 'package:api_test/core/api/api_service.dart';
import 'package:api_test/core/errors/exception.dart';
import 'package:api_test/core/errors/failure.dart';
import 'package:api_test/features/home/data/models/user_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class CreateUserRepo {
  final ApiService api;
  CreateUserRepo( this.api);


  Future<Either<Failure, UserModel>> createUser(Map<String, dynamic> body) async {
    try {
      final response =await api.createUser(body);
      return right(response);
    } on DioException catch (e) {
      return left(DioFailure.fromDioException(e));
    } catch (_) {
      return const Left(ServerFailure("Unexpected error"));
    }
  }
}
