import 'package:flutter/material.dart';

class restauranCard extends StatelessWidget {
  restauranCard({
    required this.latest,
    required this.ratting,
    required this.resImg,
    required this.resName,
  });

  String resImg;
  String resName;
  String latest;
  String ratting;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: 289,
        height: 220,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(resImg),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 10),
                Text(
                  resName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 10),
                Text(latest),
                SizedBox(width: 10),
                Image.asset("images/star.png"),
                SizedBox(width: 5),
                Text(ratting),
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
      ),
    );
  }
}
