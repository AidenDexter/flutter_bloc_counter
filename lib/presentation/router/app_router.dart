import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_counter/logic/cubit/counter_cubit.dart';
import 'package:flutter_bloc_counter/presentation/screens/second_screen.dart';
import 'package:flutter_bloc_counter/presentation/screens/third_screen.dart';

import '../screens/home_screen.dart';

class AppRouter {
  final CounterCubit _counterCubit = CounterCubit();
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
              value: _counterCubit,
              child: const HomeScreen(title: 'HomeScreen', backgroundScreenColor: Color.fromARGB(223, 56, 221, 30))),
        );
      case '/second':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                value: _counterCubit,
                child: const SecondScreen(
                    title: 'SecondScreen', backgroundScreenColor: Color.fromARGB(223, 30, 157, 221))));
      case '/third':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                value: _counterCubit,
                child:
                    const ThirdScreen(title: 'ThirdScreen', backgroundScreenColor: Color.fromARGB(223, 144, 87, 198))));
      default:
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                value: _counterCubit,
                child: const HomeScreen(title: 'Error', backgroundScreenColor: Color.fromARGB(223, 221, 30, 30))));
    }
  }

  void dispose() {
    _counterCubit.close();
  }
}
