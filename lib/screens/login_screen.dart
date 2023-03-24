import 'package:flutter/material.dart';
import 'package:thiet_v2/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const routeName = "/login-screen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            child: Center(
                child: Image.asset(
              "assets/images/logo.jpg",
              height: 200,
              width: 200,
            )),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 5),
            child: Form(
                child: Column(
              children: [
                TextFormField(
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "ElMessiri",
                      fontSize: 20),
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Theme.of(context).primaryColor,
                      ),
                      label: Text('البريد الالكتروني'),
                      border: OutlineInputBorder()),
                  mouseCursor: MouseCursor.defer,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "ElMessiri",
                  ),
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Theme.of(context).primaryColor,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: _obscureText
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                      ),
                      label: Text('كلمة المرور'),
                      border: OutlineInputBorder()),
                  mouseCursor: MouseCursor.defer,
                ),
              ],
            )),
          ),
          // Container(
          //   margin: const EdgeInsets.all(20),
          //   // child: Row(
          //   //   children: [
          //   //     const Text(
          //   //       "Forget your password?  ",
          //   //       style: TextStyle(fontWeight: FontWeight.bold),
          //   //     ),
          //   //     InkWell(
          //   //       child: const Text("click here",
          //   //           style: TextStyle(color: Colors.red)),
          //   //     )
          //   //   ],
          //   // ),
          // ),
          //LOGIN BUTTON
          SizedBox(
            height: 10,
          ),
          MaterialButton(
            hoverColor: Colors.cyan,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
            color: Theme.of(context).primaryColor,
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(
                HomeScreen.routeName,
              );
              // AwesomeDialog(
              //         title: "! مرحبا ",
              //         context: context,
              //         dialogType: DialogType.success,
              //         animType: AnimType.rightSlide,
              //         desc: 'تم تسجيل الدخول بنجاح',
              //         btnOkOnPress: () {},
              //         width: 1800)
              // .show();
            },
            child: Text(
              " تسجيل الدخول ",
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
        ],
      ),
    ));
  }
}
