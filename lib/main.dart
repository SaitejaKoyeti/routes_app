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
      body: MyCustomForm()

    );
  }
}

class MyCustomForm extends StatefulWidget{
  @override
  State<MyCustomForm> createState() => _MyCustomFormState();

}

class _MyCustomFormState extends State<MyCustomForm>{
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
   return Form(
     key: formKey,
       child:Column(
         children: [Padding(padding: EdgeInsets.only(top: 10)),
           Text("Sigin",textAlign: TextAlign.center, style: TextStyle(
               fontSize: 25, color: Colors.blue, fontWeight: FontWeight.bold)),
           Padding(padding: EdgeInsets.all(15),
             child: TextFormField(
               decoration: InputDecoration(
                 labelText: "Enter Email",
                 prefixIcon: Icon(Icons.email),
                 border: OutlineInputBorder(),
               ),
              validator: (value) {
                 if(value== null || value.isEmpty) {
                   return "Please enter your email";
                 }
                return null;
              },
             ),
           ),
           Padding(padding: EdgeInsets.all(15),
             child: TextFormField(
               decoration: InputDecoration(
                 labelText: "Enter Password",
                 prefixIcon: Icon(Icons.password),
                 border: OutlineInputBorder(),
               ),
               validator: (value) {
                 if(value== null || value.isEmpty) {
                   return "Please enter your Password";
                 }
                 return null;
               },
             ),
           ),
           Center(
               child: ElevatedButton(
                 child: Text("SignIn"),
                 onPressed: () {
                   Navigator.push(context,
                       MaterialPageRoute(builder: (context)=> SecondApp()));
                 },

               )
           ),
         ],
       ),
   );
  }

}

