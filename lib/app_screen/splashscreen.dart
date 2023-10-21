import 'dart:async';

import 'package:MyApp/app_screen/sample.dart';
import 'package:flutter/material.dart';

import 'botttomnavigation.dart';


class Splashscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
       return _Splashscreen();
  }


}


class _Splashscreen extends State<Splashscreen>{

 String name="";
 int _currentindex=0;

    @override
    void initState(){
      super.initState();
    
      Timer(Duration(seconds: 5
      ), () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeStateclass(),));
       });
    }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
     body:  Container(
        height: double.infinity,
        width: double.infinity,
        child: FittedBox(child: Image.asset('images/img.jpg'),
        fit: BoxFit.cover,),
     )


   );
  }

}
