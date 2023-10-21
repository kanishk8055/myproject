import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    title: "Homescreen",
    debugShowCheckedModeBanner: false,
    home: MyfirstPage(),
  ));
}

class MyfirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
   return _MyfirstPage();
  }
}

class _MyfirstPage extends State<MyfirstPage>{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar:  AppBar(title: Text("Hello data"),),
      body: Container(
        margin: EdgeInsets.all(10),
        color: Colors.amberAccent,
        child: Table(
          border: TableBorder.all(),
          children: [
            TableRow(
              children: [
                 Text("First name",
                 textDirection: TextDirection.ltr,
                 textAlign: TextAlign.center,
                 style: TextStyle(
                  fontSize: 30,
                  color: Colors.black
                 ),),
                Text("Last name",
                 textDirection: TextDirection.ltr,
                 textAlign: TextAlign.center,
                 style: TextStyle(
                  fontSize: 30,
                  color: Colors.black
                 ),)
              ]
            ),
              TableRow(
              children: [
                 Text("Koushal",
                 textDirection: TextDirection.ltr,
                 textAlign: TextAlign.center,
                 style: TextStyle(
                  fontSize: 30,
                  color: Colors.black
                 ),),
                Text("Rathor",
                 textDirection: TextDirection.ltr,
                 textAlign: TextAlign.center,
                 style: TextStyle(
                  fontSize: 30,
                  color: Colors.black
                 ),)
              ]
            ),
             TableRow(
              children: [
                 Text("Ram",
                 textDirection: TextDirection.ltr,
                 textAlign: TextAlign.center,
                 style: TextStyle(
                  fontSize: 30,
                  color: Colors.black
                 ),),
                Text("Rathor",
                 textDirection: TextDirection.ltr,
                 textAlign: TextAlign.center,
                 style: TextStyle(
                  fontSize: 30,
                  color: Colors.black
                 ),)
              ]
            )


          ],
        ),
      ),

    );
  }

}
