import 'package:api_test/core/api/api_service.dart';
import 'package:api_test/core/errors/exception.dart';
import 'package:api_test/core/errors/failure.dart';
import 'package:api_test/features/home/data/models/user_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class GetUsersRepo {
  final ApiService apiService;
  GetUsersRepo(this.apiService);

  Future<Either<Failure, List<UserModel>>> getUsers() async {
    try {
      final response = await apiService.getUsers();
      return Right(response);
    } on DioException catch (e) {
      return left(DioFailure.fromDioException(e));
    } catch (_) {
      return const Left(ServerFailure("Unexpected error"));
    }
  }
  Future<Either<Failure, UserModel>> getUser(int userId) async {
    try {
      final response = await apiService.getUser(userId);
      return Right(response);
    } on DioException catch (e) {
      return left(DioFailure.fromDioException(e));
    } catch (_) {
      return const Left(ServerFailure("Unexpected error"));
    }
  }
}
