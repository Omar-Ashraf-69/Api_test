
import 'package:api_test/core/errors/failure.dart';
import 'package:api_test/features/home/data/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user_state.freezed.dart';
@freezed
class CreateUserState with _$CreateUserState {
  const factory CreateUserState.initial() = _Initial;
  const factory CreateUserState.loading() = _Loading;
  const factory CreateUserState.success(UserModel user) = _Success;
  const factory CreateUserState.failure(Failure error) = _Failure;
}
