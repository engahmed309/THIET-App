import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});
  static const routeName = "/News-screen";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "News Screen",
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }
}
