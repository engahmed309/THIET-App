import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
