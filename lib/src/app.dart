import 'package:flutter/material.dart';
import 'package:riverpod3_playground/src/features/fortune_cookie/presentation/fortune_cookie_list_screen.dart';
import 'package:riverpod3_playground/src/features/fortune_cookie/presentation/one_fortune_cookie_screen.dart';
import 'package:riverpod3_playground/src/features/home/presentation/home_screen.dart';
import 'package:riverpod3_playground/src/features/other/presentation/other_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
     initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/fortune_cookie': (context) => FortuneCookieScreen(),
        '/fortune_cookie_list': (context) => FortuneCookieListScreen(),
        '/other': (context) => OtherScreen(),
      },
    );
  }
}