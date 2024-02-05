import 'package:flutter/material.dart';

import 'presentation/router/app_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final AppRouter _appRouter = AppRouter();
  // final CounterCubit _counterCubit = CounterCubit();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: _appRouter.onGenerateRoute,
      // routes: {
      //   '/': (context) => BlocProvider.value(
      //         value: _counterCubit,
      //         child: const HomeScreen(
      //           title: 'HomeScreen',
      //           backgroundScreenColor: Color.fromARGB(223, 221, 94, 30),
      //         ),
      //       ),
      //   '/second': (context) => BlocProvider.value(
      //         value: _counterCubit,
      //         child:   SecondScreen(
      //           title: 'SecondScreen',
      //           backgroundScreenColor: Color.fromARGB(221, 58, 239, 22),
      //         ),
      //       ),
      //   '/third': (context) => BlocProvider.value(
      //         value: _counterCubit,
      //         child: const ThirdScreen(
      //           title: 'ThirdScreen',
      //           backgroundScreenColor: Color.fromARGB(224, 60, 193, 226),
      //         ),
      //       ),
      // },
    );
  }

  @override
  void dispose() {
    _appRouter.dispose();
    // _counterCubit.close();
    super.dispose();
  }
}
