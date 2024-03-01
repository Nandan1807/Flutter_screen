import 'package:flutter/material.dart';
import 'package:flutter_screens/My_database/database.dart';
import 'package:flutter_screens/crudform.dart';

const List<String> dropDownList = ["d1", "d2", "d3", "d4"];

class MainListPage extends StatefulWidget {
  @override
  State<MainListPage> createState() => _MainListPageState();
}

class _MainListPageState extends State<MainListPage> {
  String dropdownValue = dropDownList.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => CrudForm(0),
                    ),
                  );
                },
                icon: Icon(Icons.add)),
            Expanded(
              child: FutureBuilder(
                future: Mydatabase().copyPasteAssetFileToRoot(),
                builder: (context, snapshot1) {
                  if (snapshot1.hasData) {
                    return FutureBuilder(
                      future: Mydatabase().getAll(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index) {
                              return Card(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(snapshot.data![index]['uid']
                                        .toString()),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Text(snapshot.data![index]['username']
                                              .toString()),
                                          Text(snapshot.data![index]['email']
                                              .toString()),
                                        ],
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) => CrudForm(
                                                snapshot.data![index]['uid']),
                                          ),
                                        );
                                      },
                                      icon: Icon(Icons.edit),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        Mydatabase().deleteUser(
                                            snapshot.data![index]['uid']);
                                        setState(() {});
                                      },
                                      icon: Icon(Icons.delete),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        } else {
                          return CircularProgressIndicator();
                        }
                      },
                    );
                  } else if (snapshot1.hasError) {
                    return Text(snapshot1.error!.toString());
                  } else {
                    return Text("loding....");
                  }
                },
              ),
            ),
            Expanded(
              child: Center(
                child: DropdownButton(
                  elevation: 20,
                  icon: Icon(Icons.ac_unit),
                  value: dropdownValue,
                  isExpanded: true,
                  items: dropDownList.map((String value) {
                    return DropdownMenuItem(
                      child: Text(value),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
