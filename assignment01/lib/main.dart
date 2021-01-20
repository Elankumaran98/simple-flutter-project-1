import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final myController = TextEditingController();
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Assignment 01",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(hintText: "Enter Text"),
            controller: myController,
          ),
          FloatingActionButton(
            onPressed: () {
              return showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text(myController.text),
                    );
                  });
            },
            tooltip: "Show me the text!",
            child: Icon(Icons.text_fields),
          )
        ],
      ),
    );
  }
}
