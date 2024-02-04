// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isExpanded1 = false;
  bool isExpanded2 = false;
  bool isExpanded3 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "My Class Schedule",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            // List of cards
            Expanded(
              child: ListView(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width-60,
                    height: 200,
                    child: Image.network(
                      'https://ik.imagekit.io/upgrad1/abroad-images/university/136/banner/University_of_CharlestonEQJ09V.png?tr=f-jpg,pr-true', // Replace with your image URL
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 20),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Color.fromARGB(255, 171, 139, 227),
                    child: ExpansionTile(
                      onExpansionChanged: (value) {
                        setState(() {
                          isExpanded1 = value;
                        });
                      },
                      title: Text(
                        "Monday-Wednesday-Friday",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: isExpanded1
                          ? Text(
                              "8-8:50: Database Systems\n10-10:50: Machine Learning\n11-11:50: Linear Algebra\n13-13:50: Cryptology",
                            )
                          : null,
                      children: [],
                    ),
                  ),
                  SizedBox(height: 20),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Color.fromARGB(255, 171, 139, 227),
                    child: ExpansionTile(
                      onExpansionChanged: (value) {
                        setState(() {
                          isExpanded2 = value;
                        });
                      },
                      title: Text(
                        "Tuesday-Thursday",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: isExpanded2
                          ? Text("9:25-10:40: Mobile Computing")
                          : null,
                      children: [],
                    ),
                  ),
                  SizedBox(height: 20),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Color.fromARGB(255, 171, 139, 227),
                    child: ExpansionTile(
                      onExpansionChanged: (value) {
                        setState(() {
                          isExpanded3 = value;
                        });
                      },
                      title: Text(
                        "Online",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: isExpanded3 ? Text("Data Visualization") : null,
                      children: [],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}