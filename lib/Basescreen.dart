import 'package:flutter/material.dart';
import 'package:flutter_screens/cart.dart';
import 'package:flutter_screens/productsfound.dart';
import 'package:flutter_screens/productsnotfound.dart';

class BaseScreen extends StatefulWidget {
  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  var searchText = TextEditingController(text: "");
  List<Map<String, dynamic>> cart = [];
  List<String> productlist = [
    "Watch",
    "Ipad Air",
    "MacBook",
    "Airpods Pro",
    "S24 Ultra",
    "Dell XPS 9315",
    "iPhone 15",
    "iPhone 15 Pro",
    "realme narzo N55",
    "MI Xiaomi TV",
    "MI Xiaomi",
    "realme",
    "Apple",
    "Dell",
    "Samsung",
    ""
  ];
  List<String> productsearchlist = [];
  var index = 1;
  @override
  Widget build(BuildContext context) {
    List<Widget> li = [
      Product(),
      ProductsFound(searchText.text,cart),
    ];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.arrow_back,
                        )),
                  ),
                  Expanded(
                    flex: 7,
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          for (int i = 0; i < productlist.length; i++) {
                            if (productlist[i]
                                .toLowerCase()
                                .contains(value.toString().toLowerCase())) {
                              index = 1;
                              break;
                            } else {
                              index = 0;
                            }
                          }
                        });
                      },
                      controller: searchText,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(width: 2)),
                        labelText: "search",
                        hintText: "search for products",
                        prefixIcon: Icon(Icons.search)
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Cart(cart),));
                        },
                        icon: Icon(
                          Icons.shopping_cart,
                        )),
                  ),
                ],
              ),
            ),
            Expanded(child: li[index]),
          ],
        ),
      ),
    );
  }
}
