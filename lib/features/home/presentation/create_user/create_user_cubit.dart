import 'package:api_test/features/home/data/repos/create_user_repo.dart';
import 'package:api_test/features/home/presentation/create_user/create_user_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CreateUserCubit extends Cubit<CreateUserState> {
  CreateUserCubit({required this.repo}) : super(CreateUserState.initial());
  final CreateUserRepo repo;

  Future<void> createUser(Map<String, dynamic> body) async {
    emit(CreateUserState.loading());
    final result = await repo.createUser(body);
    result.fold(
      (failure) => emit(CreateUserState.failure(failure)),
      (user) => emit(CreateUserState.success(user)),
    );
  }
}
