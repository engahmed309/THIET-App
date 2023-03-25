import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MainDrawerItem extends StatelessWidget {
  Color iconColor;
  Widget textWidget;
  IconData icon;
  dynamic handler;
  MainDrawerItem({
    required this.handler,
    required this.iconColor,
    required this.textWidget,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: handler,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Container(
            margin: EdgeInsets.only(right: 10, left: 10),
            width: double.infinity,
            height: 70,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  textWidget,
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    icon,
                    color: iconColor,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
