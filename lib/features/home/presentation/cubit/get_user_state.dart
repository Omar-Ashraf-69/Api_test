// part of 'get_user_cubit.dart';

// abstract class GetUserState {}

// final class GetUserInitial extends GetUserState {}

import 'package:api_test/core/errors/failure.dart';
import 'package:api_test/features/home/data/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_user_state.freezed.dart'; // Required for code generation

@freezed
class GetUsersState with _$GetUsersState {
  const factory GetUsersState.initial() = _Initial;
  const factory GetUsersState.loading() = _Loading;
  const factory GetUsersState.success(List<UserModel> users) = _Success;
  const factory GetUsersState.error(Failure error) = _Error;

  const factory GetUsersState.loadingUser() = _UserLoading;
  const factory GetUsersState.userSuccess(UserModel users) = _UserSuccess;
  const factory GetUsersState.userError(Failure error) = _UserError;
}
