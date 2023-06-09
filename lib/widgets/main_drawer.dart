import 'package:flutter/material.dart';
import 'package:thiet_v2/screens/eLearning_screen.dart';
import 'package:thiet_v2/screens/home_screen.dart';
import 'package:thiet_v2/screens/login_screen.dart';
import 'package:thiet_v2/screens/student_info_screen.dart';
import 'package:thiet_v2/widgets/main_drawer_item.dart';
import 'DropDownListItem.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //CONTAINER ITEMS IN THE DRAWER
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    // bottomRight: Radius.circular(30),
                  ),
                  color: Theme.of(context).primaryColor,
                ),
                width: double.infinity,

                /// height: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(StudentInfoScreen.routeName);
                        },
                        icon: Icon(
                          Icons.person,
                        )),
                    Text(
                      "مازن محمد نبيل",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text(
                      "mazen@thiet.edu.eg",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),

              MainDrawerItem(
                handler: () {
                  Navigator.of(context)
                      .pushReplacementNamed(HomeScreen.routeName);
                  print("Navigated");
                },
                icon: (Icons.home),
                iconColor: Colors.white,
                textWidget: Text(
                  "الرئيسية",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),

              MainDrawerItem(
                  handler: () {
                    Navigator.of(context).pushNamed(ELearningScreen.routeName);
                  },
                  iconColor: Colors.white,
                  textWidget: Text(
                    "منصة التعليم",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  icon: Icons.school_rounded),

              DropDownListItem(),
              SizedBox(
                height: 150,
              ),
              Divider(
                color: Theme.of(context).primaryColor,
                thickness: 6,
              ),

              MainDrawerItem(
                  handler: () {},
                  iconColor: Colors.white,
                  textWidget: Text(
                    "الاعدادات",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  icon: Icons.settings),
              MainDrawerItem(
                  handler: () {
                    Navigator.pushNamed(context, LoginScreen.routeName);
                  },
                  iconColor: Colors.red,
                  textWidget: Text(
                    "تسجيل الخروج",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  icon: Icons.logout),
            ],
          ),
        ),
      ),
    );
  }
}
