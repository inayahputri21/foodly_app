import 'package:flutter/material.dart';

class foodDetails extends StatelessWidget {
  foodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFE8E0),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(30, 40, 30, 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset("images/back.png"),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Image.asset("images/heart.png"),
                        )
                      ],
                    ),
                    SizedBox(height: 18),
                    Image.asset(
                      "images/cream1.png",
                    )
                  ],
                ),
                height: 345,
                color: Color(0xffFFE8E0),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.all(30),
                height: 550,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Cream Chicken",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    // SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "24 min",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff9D9693)),
                        ),
                        SizedBox(width: 8),
                        Image.asset("images/star.png"),
                        Text(
                          "4.8",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff9D9693)),
                        ),
                        SizedBox(width: 8),
                        Image.asset("images/fire.png"),
                        SizedBox(width: 6),
                        Text(
                          "356 Kcal",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff9D9693)),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 27,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xffFFF9E9),
                            ),
                            child: Center(
                              child: Text(
                                "Healthy",
                                style: TextStyle(
                                  color: Color(0xffDFA000),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Text(
                          "Description",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "The name says it all! ‘Cream Chicken’- Succulent chicken pieces simmered slowly in a mix of flavourful spices, and rich cream.This dish is perfect for this weather, when it is starting to get a bit chilly, and the skies are getting a little darker.",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff9D9693),
                      ),
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("images/tambahbrg.png"),
                        Text(
                          "Rp.149.999,-",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: 358,
                      height: 66,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffFF4201),
                      ),
                      child: Center(
                        child: Text(
                          "ADD TO CART",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
