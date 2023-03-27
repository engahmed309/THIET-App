import 'package:flutter/material.dart';
import 'package:thiet_v2/screens/news_details_sscreen.dart';

class NewsGridItem extends StatelessWidget {
  String newName;
  String newImage;

  NewsGridItem({required this.newName, required this.newImage});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        elevation: 5,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Image.network(
            "$newImage",
            fit: BoxFit.cover,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            color: Colors.white.withOpacity(.2),
            width: double.infinity,
            height: 50,
            child: Text(
              newName.toString(),
              style: Theme.of(context).textTheme.headline2,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.end,
            ),
          ),
        ]),
      ),
    );
  }
}
