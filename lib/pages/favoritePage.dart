import 'package:flutter/material.dart';
import 'package:foodly_app/widgets/foodCard.dart';

class favoritePage extends StatelessWidget {
  const favoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(30, 60, 30, 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "My Favorite",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              GridView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  mainAxisExtent: 300,
                ),
                children: [
                  foodCard(
                    foodimg: "images/cream.png",
                    foodname: "Cream Chicken",
                    harga: "149.999,-",
                    lates: "24 min",
                    ratting: "4.8",
                    ontapCard: () {},
                  ),
                  foodCard(
                    foodimg: "images/fried.png",
                    foodname: "Fried Fish",
                    harga: "159.999,-",
                    lates: "15 min",
                    ratting: "5.0",
                    ontapCard: () {},
                  ),
                  foodCard(
                    foodimg: "images/japanese.png",
                    foodname: "Japanese Sushi",
                    harga: "249.999,-",
                    lates: "30 min",
                    ratting: "4.9",
                    ontapCard: () {},
                  ),
                  foodCard(
                    foodimg: "images/spaghetti.png",
                    foodname: "Spaghetti Pasta",
                    harga: "139.999,-",
                    lates: "20 min",
                    ratting: "4.5",
                    ontapCard: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
