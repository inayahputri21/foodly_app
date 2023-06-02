import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:foodly_app/pages/foodDetailsPage.dart';
import 'package:foodly_app/widgets/categoryButton.dart';
import 'package:foodly_app/widgets/foodCard.dart';
import 'package:foodly_app/widgets/restauranCard.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 36, 20, 35),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    width: 220,
                    child: DropdownSearch<String>(
                      popupProps: PopupProps.menu(
                        showSelectedItems: true,
                        disabledItemFn: (String s) => s.startsWith('I'),
                      ),
                      items: [
                        "Banda Aceh, Indonesia",
                        "Aceh Besar, Indonesia",
                        "Bireun, Indonesia",
                        "Lhokseumawe, Indonesia",
                        "Langsa, Indonesia",
                        "Aceh Timur, Indonesia",
                        "Lhoksukon, Indonesia",
                        "Nagan Raya, Indonesia",
                      ],
                      dropdownDecoratorProps: DropDownDecoratorProps(
                        dropdownSearchDecoration: InputDecoration(
                          labelText: "Your Location",
                          hintText: "Country in menu mode",
                          suffixIconColor: Color(0xffFF4201),
                        ),
                      ),
                      onChanged: print,
                      selectedItem: "Banda Aceh, Indonesia",
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xffFFE8E0),
                      ),
                      child: Image.asset("images/lonceng.png"),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 48),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 23),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      height: 55,
                      width: 278,
                      child: Center(
                        child: TextFormField(
                          decoration: InputDecoration(
                              icon: Image.asset("images/search.png"),
                              border: InputBorder.none,
                              hintText: "Search..."),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        width: 58,
                        height: 55,
                        child: Image.asset("images/filters.png"),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xffFF4201)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 41),
              Container(
                width: 359,
                height: 150,
                child: Image.asset("images/breakfast.png"),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              SizedBox(height: 40),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    categoryButton(
                      ontap: () {},
                      image: "images/burger.png",
                      name: "Burgers",
                      warnaBtn: Color(0xffFFE8E0),
                      warnaText: Color(0xffFF4201),
                    ),
                    SizedBox(width: 15),
                    categoryButton(
                      ontap: () {},
                      image: "images/pizza.png",
                      name: "Pizzas",
                      warnaBtn: Color(0xffFFE9B2),
                      warnaText: Color(0xffDFA000),
                    ),
                    SizedBox(width: 15),
                    categoryButton(
                      ontap: () {},
                      image: "images/cake.png",
                      name: "Cakes",
                      warnaBtn: Color(0xffDBE0F9),
                      warnaText: Color(0xff4B69FD),
                    ),
                    SizedBox(width: 15),
                    categoryButton(
                      ontap: () {},
                      image: "images/tacos.png",
                      name: "Tacos",
                      warnaBtn: Color(0xffD0E8E3),
                      warnaText: Color(0xff009E80),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Trending Now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 13),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    foodCard(
                      foodimg: "images/cream.png",
                      foodname: "Cream Chicken",
                      harga: "Rp. 149.999,-",
                      lates: "24 min",
                      ratting: "4.8",
                      ontapCard: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return foodDetails();
                          }),
                        );
                      },
                    ),
                    SizedBox(width: 20),
                    foodCard(
                      foodimg: "images/fried.png",
                      foodname: "Fried Fish",
                      harga: "Rp. 184.999,-",
                      lates: "15 min",
                      ratting: "5.0",
                      ontapCard: () {},
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Restaurants Near You",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 26),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    restauranCard(
                        latest: "15 min",
                        ratting: "4.2",
                        resImg: "images/resto1.png",
                        resName: "The Steak House"),
                    SizedBox(width: 24),
                    restauranCard(
                        latest: "15 min",
                        ratting: "5.0",
                        resImg: "images/resto2.png",
                        resName: "Foodies"),
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
