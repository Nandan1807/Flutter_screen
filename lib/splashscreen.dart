import 'package:flutter/material.dart';
import 'package:flutter_screens/login.dart';

class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 36, 96, 168),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(left: 50,top: 50),
              child: Center(
                  child: Text(
                    "Find your Gadget",
                    style: TextStyle(
                        fontSize: 70,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ),
          Expanded(
              flex: 2,
              child: Container(
                child: Image.asset(
                  "assets/images/splashscreen.jpeg",
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height*0.40,
                ),
              )),
          Expanded(
            child: Container(
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Container(
                    height: 70,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white, borderRadius: BorderRadius.circular(9)),
                    child: Center(
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                              color: Color.fromARGB(255, 36, 96, 168),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
