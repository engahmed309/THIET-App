import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});
  static const routeName = "/test-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "سيتم إنشاء هذه الصفحه قريبا ",
        style: Theme.of(context).textTheme.headline2,
      )),
    );
  }
}
