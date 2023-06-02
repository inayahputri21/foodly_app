import 'package:flutter/material.dart';

class foodCard extends StatelessWidget {
  foodCard({
    required this.foodimg,
    required this.foodname,
    required this.harga,
    required this.lates,
    required this.ratting,
    required this.ontapCard,
  });

  String foodname;
  String foodimg;
  String ratting;
  String harga;
  String lates;
  Color? color;
  void Function()? ontapCard;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: ontapCard,
        child: Container(
          padding: EdgeInsets.all(12),
          height: 283,
          width: 213,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(foodimg),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    foodname,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(lates),
                  SizedBox(width: 10),
                  Image.asset("images/star.png"),
                  SizedBox(width: 5),
                  Text(ratting),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    harga,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 42,
                      height: 38,
                      child: Image.asset("images/cart.png"),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffFF4201),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
