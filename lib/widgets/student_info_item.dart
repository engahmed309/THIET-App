import 'package:flutter/material.dart';

class StudentInfoItem extends StatelessWidget {
  final String infotext;
  IconData infoicon;
  Color infoColor;
  StudentInfoItem({
    required this.infoColor,
    required this.infoicon,
    required this.infotext,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10, left: 10, bottom: 16),
      height: 70,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(20),
        color: infoColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Icon(
              infoicon,
              color: Colors.white,
            ),
          ),
          Container(
              margin: EdgeInsets.only(right: 30, top: 8),
              child: Column(
                children: [
                  Text(
                    ": $infotext",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
