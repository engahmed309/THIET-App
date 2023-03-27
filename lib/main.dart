import 'package:flutter/material.dart';
import 'package:thiet_v2/screens/eLearning_screen.dart';
import 'package:thiet_v2/screens/login_screen.dart';
import 'package:thiet_v2/screens/new_screen.dart';
import 'package:thiet_v2/screens/news_details_sscreen.dart';
import 'package:thiet_v2/screens/student_info_screen.dart';
import 'package:thiet_v2/screens/subJect_details_screen.dart';
import 'package:thiet_v2/screens/subject_table_screen.dart';
import 'package:thiet_v2/screens/test.dart';

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
        appBarTheme: AppBarTheme(
            titleTextStyle: Theme.of(context).textTheme.headline1,
            backgroundColor: Color.fromRGBO(46, 97, 124, 70),
            centerTitle: true),
        fontFamily: "ElMessiri",
        textTheme: ThemeData.light().textTheme.copyWith(
              headline1: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'ElMessiri'),
              headline2: const TextStyle(
                  //decoration: TextDecoration.underline,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  // fontWeight: FontWeight.bold,
                  fontFamily: 'ElMessiri'),
            ),
        primaryColor: const Color.fromRGBO(46, 97, 124, 70),
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      routes: {
        TestScreen.routeName: (context) => const TestScreen(),
        ELearningScreen.routeName: (context) => const ELearningScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        NewsScreen.routeName: (context) => const NewsScreen(),
        SubjectDetailsScreen.routeName: (context) =>
            const SubjectDetailsScreen(),
        SubjectTableScreen.routeName: (context) => const SubjectTableScreen(),
        StudentInfoScreen.routeName: (context) => const StudentInfoScreen(),
        NewsDetailsScreen.routeName: (context) => NewsDetailsScreen(),
      },
    );
  }
}
