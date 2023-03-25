import 'package:flutter/material.dart';
import '../widgets/student_info_item.dart';

class StudentInfoScreen extends StatefulWidget {
  static const routeName = '/student-info-screen';
  const StudentInfoScreen({Key? key}) : super(key: key);
  @override
  State<StudentInfoScreen> createState() => _StudentInfoScreenState();
}

class _StudentInfoScreenState extends State<StudentInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "بيانات الطالب ",
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        body: Stack(children: [
          Container(color: Colors.white),
          Center(
            child: Image.asset(
              "assets/images/logo.jpg",
              color: Colors.white.withOpacity(0.07),
              colorBlendMode: BlendMode.modulate,
            ),
          ),
          ListView(
            children: [
              Column(children: [
                const SizedBox(
                  height: 40,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 1),
                  height: 150,
                  width: 200,
                  child: Image.asset(
                    "assets/images/person.png",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                StudentInfoItem(
                  infoColor: Color(0xFF678983),
                  infoicon: Icons.phone,
                  infotext: "الكود",
                ),
                StudentInfoItem(
                    infoColor: Color(0xFFD5CEA3),
                    infoicon: Icons.holiday_village_sharp,
                    infotext: "القسم"),
                StudentInfoItem(
                    infoColor: Color(0xFF678983),
                    infoicon: Icons.email,
                    infotext: "الإيميل"),
                StudentInfoItem(
                    infoColor: Color(0xFFD5CEA3),
                    infoicon: Icons.confirmation_num_outlined,
                    infotext: "المستوى"),
                StudentInfoItem(
                    infoColor: Color(0xFF678983),
                    infoicon: Icons.timeline,
                    infotext: "عدد الساعات المحققه"),
                StudentInfoItem(
                    infoColor: Color(0xFFD5CEA3),
                    infoicon: Icons.numbers_rounded,
                    infotext: " GPA"),
                StudentInfoItem(
                    infoColor: Color(0xFF678983),
                    infoicon: Icons.person,
                    infotext: "المرشد الأكاديمي")
              ])
            ],
          )
        ]));
  }
}
