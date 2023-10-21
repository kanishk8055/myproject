import 'package:MyApp/app_screen/secondscreen.dart';
import 'package:flutter/material.dart';


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
         child: Center(
          child: ElevatedButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => MySecondClass(),))
         , child: Text("Click Here")),
         ),

      ),

    );
  }

}
