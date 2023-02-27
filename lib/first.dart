import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override

  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black26,
          ),
          actions: [
            PopupMenuButton(
              color: Colors.black,
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Row(
                    children: [
                      Icon(Icons.star),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Get The App"),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 1,
                  child: Row(
                    children: [
                      Icon(Icons.star),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Get The App"),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text(
                    "MY CONTECT",
                    style: TextStyle(color: Colors.black26),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  backgroundColor: Colors.grey.shade900,
                  onPressed: () {
                    setState(() {
                      Navigator.pushNamed(context, 'new').then((value) {setState(() {

                      });});
                    });
                  },
                  child: Icon(Icons.add,size: 30,color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget Box(String a,String b,index)
  {
    return InkWell(
      onTap: () {
        setState(() {
          Navigator.pushNamed(context, 'second',arguments: index);
        });
      },
      child: Container(
        height: 50,
        child: Row(
          children: [
            Text("$a",style: TextStyle(color: Colors.white,fontSize: 20)),
            Expanded(child: SizedBox()),
            InkWell(onTap: () {
              launchUrl(Uri.parse('tel:$b'));
            },child: Icon(Icons.call,color: Colors.white)),
            SizedBox(width: 10,),
            InkWell(onTap: () {
              launchUrl(Uri.parse('sms:$b'));
            },child: Icon(Icons.message,color: Colors.white)),
          ],
        ),
      ),
    );
  }
}


