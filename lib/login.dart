import 'package:flutter/material.dart';
import 'package:flutter_screens/Basescreen.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool passvisible = true;
  final textcont1 = TextEditingController();
  final textcont2 = TextEditingController();
  List<Map<String, String>> userlist = [
    {"test@gmail.com": "test123"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 36, 96, 168),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.only(left: 40),
                child: Center(
                    child: Text(
                  "Welcome back",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold),
                )),
              )),
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Icon(Icons.email_outlined, color: Colors.grey),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Email",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(bottom: 20),
                          child: TextField(
                              controller: textcont1,
                              decoration:
                                  InputDecoration(hintText: "abc@gmail.com")),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Icon(Icons.lock_outline, color: Colors.grey),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Password",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(bottom: 20),
                          child: TextField(
                            controller: textcont2,
                            decoration: InputDecoration(
                                hintText: "Password",
                                suffixIcon: InkWell(
                                  onTap: () {
                                    setState(() {
                                      passvisible = !passvisible;
                                    });
                                  },
                                  child: Container(
                                    child: Text(
                                      "Show",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 36, 96, 168),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )),
                            obscureText: passvisible,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Forgot password?",
                          style: TextStyle(
                              color: Color.fromARGB(255, 36, 96, 168),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              bool flag = true;
                              for (int i = 0; i < userlist.length; i++) {
                                if (userlist[i].containsKey(textcont1.text) &&
                                    userlist[i].containsValue(textcont2.text)) {
                                  flag = true;
                                  textcont1.text = "";
                                  textcont2.text = "";
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => BaseScreen()));
                                } else {
                                  flag = false;
                                }
                              }
                              if (flag == false) {
                                textcont2.text = "";
                                _showAlertBox(context);
                              }
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: 300,
                              child: Center(
                                  child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 36, 96, 168),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            "Create account",
                            style: TextStyle(
                                color: Color.fromARGB(255, 36, 96, 168),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void _showAlertBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert'),
          content: Text('Invalide credentials.'),
          actions: [
            TextButton(
              onPressed: () {
                // Close the alert box
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
