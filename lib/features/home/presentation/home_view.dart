import 'package:api_test/features/home/presentation/cubit/get_user_cubit.dart';
import 'package:api_test/features/home/presentation/cubit/get_user_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home View',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<GetUserCubit, GetUsersState>(
        builder: (context, state) {
          return state.maybeWhen(
            userSuccess: (user) {
              return Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Text(
                        user.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    );
                  },
                ),
              );
            },
            initial: () => const Center(child: Text('Initial State')),
            loadingUser: () => const Center(child: CircularProgressIndicator()),
            userError: (error) => Center(child: Text('Error: $error')),
            orElse: () {
              return const Center(child: Text('Unknown Error'));
            },
          );
          // return state.maybeWhen(
          //   success: (users) {
          //     return Container(
          //       margin: const EdgeInsets.all(16),
          //       padding: const EdgeInsets.all(16),
          //       decoration: BoxDecoration(
          //         border: Border.all(color: Colors.blueAccent),
          //         color: Colors.blueAccent,
          //         borderRadius: BorderRadius.circular(24),
          //       ),
          //       child: ListView.builder(
          //         shrinkWrap: true,
          //         itemCount: users.length,
          //         itemBuilder: (context, index) {
          //           return Center(
          //             child: Text(
          //               users[index].name,
          //               style: const TextStyle(
          //                 color: Colors.white,
          //                 fontSize: 24,
          //                 fontWeight: FontWeight.w600,
          //               ),
          //             ),
          //           );
          //         },
          //       ),
          //     );
          //   },
          //   initial: () => const Center(child: Text('Initial State')),
          //   loading: () => const Center(child: CircularProgressIndicator()),
          //   error: (error) => Center(child: Text('Error: $error')),
          //   orElse: () {
          //     return const Center(child: Text('Initial State'));
          //   },
          // );
        },
      ),
    );
  }
}
