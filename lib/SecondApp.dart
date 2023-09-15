
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Column(
        children: [
          Text("Signup",textAlign: TextAlign.center, style: TextStyle(
              fontSize: 25, color: Colors.blue, fontWeight: FontWeight.bold)),
          Padding(padding: EdgeInsets.all(15),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "First Name",
                prefixIcon: Icon(Icons.account_circle),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(15),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Last Name",
                prefixIcon: Icon(Icons.account_circle),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(15),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Enter EmailId",
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(15),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Create Password",
                prefixIcon: Icon(Icons.password),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ElevatedButton(
            child: Text("Click Me"),
            onPressed: () {
              Navigator.pop(context);
            }, ),
        ],
      )
    );
  }

}