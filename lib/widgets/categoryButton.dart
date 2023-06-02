import 'package:flutter/material.dart';

class categoryButton extends StatelessWidget {
  categoryButton(
      {required this.image,
      required this.name,
      required this.warnaBtn,
      required this.warnaText,
      required this.ontap});

  String name;
  String image;
  Color? warnaBtn;
  Color? warnaText;
  void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: ontap,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          width: 95,
          height: 95,
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    SizedBox(width: 12),
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: warnaText,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(image),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: warnaBtn,
          ),
        ),
      ),
    );
  }
}
