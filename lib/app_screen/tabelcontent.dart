import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class MyTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.amber,
        child: Container(
          margin: EdgeInsets.all(10),
          child: Table(
            border: TableBorder.all(),
            children: [
              TableRow(children: [
                Text("333333",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
                Text("Lastn222ame",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center)
              ]),
              TableRow(children: [
                Text("Firstname",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
                Text("Lastname",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center)
              ]),
              TableRow(children: [
                Text("Firstname",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
                Text("Lastname",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center)
              ])
            ],
          ),
        ));
  }
}
