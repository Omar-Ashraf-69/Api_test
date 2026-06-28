import 'package:api_test/core/api/end_points.dart';
import 'package:api_test/features/home/data/models/user_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart' hide Headers;

part 'api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl, headers: {})
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  // This request will automatically include User-Agent and X-Platform headers
  @GET(EndPoints.users)
  Future<List<UserModel>> getUsers();

  @GET("${EndPoints.users}/{id}")
  Future<UserModel> getUser(@Path("id") int userId);

  @DELETE("${EndPoints.users}/{id}")
  Future<void> deleteUser(@Path("id") int userId);

  @POST(EndPoints.users)
  Future<UserModel> createUser(
    @Body() Map<String, dynamic> body);
  
}
