import 'package:flutter/material.dart';

class sbjectItem extends StatelessWidget {
  const sbjectItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("object");
      },
      child: SizedBox(
        height: 160,
        width: 160,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset("assets/images/subject.jpg"),
            Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.7),
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(20))),
              alignment: Alignment.center,
              height: 40,
              width: double.infinity,
              child: Text(
                "اسم المادة",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
