import 'package:flutter/material.dart';
import 'package:thiet_v2/widgets/main_drawer.dart';

class SubjectDetailsScreen extends StatelessWidget {
  const SubjectDetailsScreen({super.key});
  static const routeName = '/subject-details-screen';
  @override
  Size get preferredSize => const Size.fromHeight(50);

  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MainDrawer(),
      appBar: AppBar(
        title: Text(""),
        centerTitle: true,
        //automaticallyImplyLeading: false,
      ),
      body: SafeArea(
          child: Column(
        children: [],
      )),
    );
  }
}
