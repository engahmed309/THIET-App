import 'package:flutter/material.dart';
import 'package:thiet_v2/screens/login_screen.dart';
import 'package:thiet_v2/screens/new_screen.dart';

import '/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "ElMessiri",
        textTheme: ThemeData.light().textTheme.copyWith(
              headline1: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'ElMessiri'),
              headline2: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  // fontWeight: FontWeight.bold,
                  fontFamily: 'ElMessiri'),
            ),
        primaryColor: const Color.fromRGBO(46, 97, 124, 70),
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      routes: {
        LoginScreen.routeName: (context) => const LoginScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        NewsScreen.routeName: (context) => const NewsScreen(),
      },
    );
  }
}
