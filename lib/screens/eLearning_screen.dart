import 'package:flutter/material.dart';
import 'package:thiet_v2/widgets/main_drawer.dart';

import '../widgets/subject_item.dart';

class ELearningScreen extends StatelessWidget {
  const ELearningScreen({super.key});
  static const routeName = "/eLearning-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "منصة التعليم",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      endDrawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/learning.jpg",
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            sbjectItem(),
          ],
        ),
      ),
    );
  }
}
