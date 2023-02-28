import 'package:flutter/material.dart';

import 'Modal.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController txtname = TextEditingController();
  TextEditingController txtumber = TextEditingController();
  List<modal> cont = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Contact",
            style: TextStyle(fontWeight: FontWeight.bold,),
          ),
          backgroundColor: Colors.black,
          leading: Icon(Icons.arrow_back),
          actions: [Icon(Icons.people_alt_sharp),],
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 10),
              Text(
                "My Contact",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(30),
                child: TextField(

                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),

                    ),
                    hintText: "Types Name or Number",
                  ),
                ),
              ),
              IconButton(
                alignment: Alignment.bottomLeft,

                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextField(
                              controller: txtname,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                hintText: "Enter Name",
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              controller: txtumber,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                hintText: "Enter Number",
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                modal m1 = modal(
                                    Name: txtname.text, Number: txtumber.text);
                                setState(() {
                                  cont.add(m1);
                                  Navigator.pop(context);
                                });
                              },
                              child: Text("Add contact"),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                icon: Icon(Icons.add),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: cont.length,
                  itemBuilder: (context, index) {
                    return ListTile(

                      title: Text("${cont[index].Name}"),
                      subtitle: Text("${cont[index].Number}"),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.sms),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.call),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}