import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
              padding: EdgeInsets.only(left: 35),
              child: Image.asset(
                "assets/images/itemnotfound.png",
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 0.3,
              )),
        ),
        Center(
          child: Text(
            "Item not found!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        Center(
          child: Column(
            children: [
              Text(
                "try searching more generic term or",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
              Text(
                "try looking for other products",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
