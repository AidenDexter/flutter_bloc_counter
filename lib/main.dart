import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_counter/cubit/counter_cubit.dart';

import 'my_home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        title: 'Counter',
        theme: ThemeData(primarySwatch: Colors.brown, visualDensity: VisualDensity.adaptivePlatformDensity),
        home: const MyHomePage(
          title: 'Counter',
        ),
      ),
    );
  }
}
