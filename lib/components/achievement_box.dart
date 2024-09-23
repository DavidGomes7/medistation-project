import 'package:flutter/material.dart';

class AchievementBox extends StatelessWidget {
  final String title;
  final String image;

  const AchievementBox({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      color: Colors.lightBlue[50],
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            Padding(padding: EdgeInsets.only(right: 10)),
            Image.network(
              image,
              width: 50,
              height: 50,
            ),
            Padding(padding: EdgeInsets.only(right: 10)),
            Text(
              title,
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
