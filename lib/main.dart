import 'package:api_test/core/dp_inj/dp_inj.dart';
import 'package:api_test/core/utils/simple_bloc_observer.dart';
import 'package:api_test/features/home/presentation/cubit/get_user_cubit.dart';
import 'package:api_test/features/home/presentation/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupServiceLocator();
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => getIt<GetUserCubit>()..getUser(8526788),
        child: const HomeView(),
      ),
    );
  }
}
