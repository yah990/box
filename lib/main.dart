import 'package:box/features/home/presentation/cubit/home_cubit.dart';
import 'package:box/features/home/presentation/pages/home_screen.dart';
import 'package:box/features/home/presentation/pages/home_screen_web.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => HomeCubit(),
          )
        ],
        child: MaterialApp(
          title: 'Box',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primarySwatch: Colors.blue,
              appBarTheme: const AppBarTheme(
                iconTheme: IconThemeData(color: Colors.black),
                color: Colors.deepPurpleAccent,
                foregroundColor: Colors.black,
                systemOverlayStyle: SystemUiOverlayStyle(
                  //<-- SEE HERE
                  // Status bar color
                  statusBarColor: Colors.green,
                  statusBarIconBrightness: Brightness.dark,
                  statusBarBrightness: Brightness.light,
                ),
              )),
          home: LayoutBuilder(
            builder: (p0, p1) {
              if (p1.maxWidth < 600) {
                return const HomeScreen();
              } else {
                return const HomeScreenWeb();
              }
            },
          ),
        ));
  }
}
