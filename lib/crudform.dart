import 'package:flutter/material.dart';
import 'package:flutter_screens/CrudMain.dart';
import 'package:flutter_screens/My_database/database.dart';

class CrudForm extends StatefulWidget {
  final id;

  CrudForm(this.id);

  @override
  State<CrudForm> createState() => _CrudFormState();
}

class _CrudFormState extends State<CrudForm> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  void initState() {
    super.initState();
    if (widget.id != 0) {
      _loadUserData();
    }
  }

  Future<void> _loadUserData() async {
    Map<String, dynamic> user = await Mydatabase().getById(widget.id);
    setState(() {
      usernameController.text = user['username'];
      emailController.text = user['email'];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              TextFormField(controller: usernameController,decoration: InputDecoration(labelText: "Username"),),
              TextFormField(controller: emailController,decoration: InputDecoration(labelText: "Email"),),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(onPressed: () {
                  if(widget.id==0){
                    Mydatabase().insertUser(usernameController.text, emailController.text);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MainListPage(),));
                  }
                  else{
                    Mydatabase().updateUser(widget.id,usernameController.text, emailController.text);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MainListPage(),));
                  }
                }, child: Text("submit")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
