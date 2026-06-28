import 'package:api_test/features/home/data/repos/get_users_repo.dart';
import 'package:api_test/features/home/presentation/cubit/get_user_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetUserCubit extends Cubit<GetUsersState> {
  GetUserCubit({required this.repo}) : super(GetUsersState.initial());

  final GetUsersRepo repo;

  Future<void> getUsers() async {
    emit(GetUsersState.loading());
    final result = await repo.getUsers();
    result.fold(
      (failure) => emit(GetUsersState.error(failure)),
      (users) => emit(GetUsersState.success(users)),
    );
  }

  Future<void> getUser(int userId) async {
    emit(GetUsersState.loadingUser());
    final result = await repo.getUser(userId);
    result.fold(
      (failure) => emit(GetUsersState.userError(failure)),
      (user) => emit(GetUsersState.userSuccess(user)),
    );
  }
  
}
