import 'package:flutter/material.dart';


class HomeStateclass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
       return _Simpleform();
  }


}


class _Simpleform extends State<HomeStateclass>{

 String name="";
  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar( title: Text("OKDATA")),
      body: Container(
            margin: EdgeInsets.all(30),
            child:  Column(
            children: [
                 TextField(
                  style: TextStyle(color: Colors.amberAccent),
                  onSubmitted: (value) {
                    setState(() {
                      name=value;
                    });
                  },
                 decoration: InputDecoration(
                    hintText: "Enter first name",
                    hintStyle: TextStyle(color: Colors.purpleAccent),
                    labelStyle: TextStyle(color: Colors.purpleAccent),

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 8, color: Colors.lightGreenAccent),

                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(width: 5, color: Colors.brown),
                    ),
                 ),
                  
                 ),
                 TextField(
                  onSubmitted: (value) {
                    setState(() {
                      name=value;
                    });
                  },
                 decoration: InputDecoration(
                    hintText: "Enter last name",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 8, color: Colors.lightGreenAccent),

                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(width: 5, color: Colors.brown),
                    ),
                 ),
                  
                 )
                 ,
                      Padding(
                             padding: EdgeInsets.all(10),
                              child: Text("Name is $name", style: TextStyle(
                                fontSize: 40,
                              ))
                      )
                 
            ],
            ),
      ),
   );
  }

}
