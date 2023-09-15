import 'package:flutter/material.dart';

import 'SecondApp.dart';

void main() {
  runApp(MaterialApp(
      home: MyApp()
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignIn page"),
      ),
      body: Column(
        children: [
          Text("Sigin",textAlign: TextAlign.center, style: TextStyle(
              fontSize: 25, color: Colors.blue, fontWeight: FontWeight.bold)),
          Padding(padding: EdgeInsets.all(15),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Email",
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(15),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Password",
                prefixIcon: Icon(Icons.password),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Center(
              child: ElevatedButton(
                child: Text("click"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> SecondApp()));
                },

              )
          ),
        ],
      )
    );
  }
}

