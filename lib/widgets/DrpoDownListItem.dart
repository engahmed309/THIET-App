import 'dart:math';
import 'package:flutter/material.dart';

class DrpoDownListItem extends StatefulWidget {
  @override
  State<DrpoDownListItem> createState() => _DrpoDownListItemState();
}

class _DrpoDownListItemState extends State<DrpoDownListItem> {
  List<String> menuItems = [
    "الجداول الدراسيه",
    "نتائج الطلاب",
    "طلب تظلم",
  ];
  var isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), bottomLeft: Radius.circular(20))),
      child: Column(
        children: [
          ListTile(
            title: Text(
              "خدمات الطالب",
              style: Theme.of(context).textTheme.headline1,
              textAlign: TextAlign.end,
            ),
            trailing: IconButton(
              onPressed: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              icon: isExpanded == true
                  ? Icon(Icons.expand_less)
                  : Icon(Icons.expand_more),
            ),
          ),
          if (isExpanded)
            Container(
              height: min(
                menuItems.length * 30 + 10,
                180,
              ),
              child: ListView(
                children: menuItems
                    .map((item) => InkWell(
                              onTap: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 40,
                                    padding: EdgeInsets.only(right: 10),
                                    child: Text(
                                      item,
                                      style:
                                          Theme.of(context).textTheme.headline1,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Icon(
                                      Icons.toll_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            )
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.end,
                        //   children: [
                        //     Text(
                        //       item,
                        //       style: TextStyle(
                        //         color: Theme.of(context).primaryColor,
                        //         fontSize: 20,
                        //         fontWeight: FontWeight.bold,
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        )
                    .toList(),
              ),
            ),
        ],
      ),
    );
  }
}
