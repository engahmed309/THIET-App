import 'package:flutter/material.dart';
import 'package:thiet_v2/screens/new_screen.dart';

import '../widgets/main_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const routeName = "/home-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          "الرئيسية",
          style: Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,
      ),
      endDrawer: MainDrawer(),
      body: NewsScreen(),
    );
  }
}
