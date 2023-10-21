import 'package:MyApp/app_screen/sample.dart';
import 'package:flutter/material.dart';

import '../listviewcl.dart';


class HomeStateclass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
       return _Simpleform();
  }


}


class _Simpleform extends State<HomeStateclass>{

 String name="";
 int _currentindex=0;
 var pageselet=[Home(),InfoParent(),NavigationData(),ListviewCl()];

  @override
  Widget build(Object context) {
    return Scaffold(
      body: Center(
       child: pageselet[_currentindex]
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
             BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",backgroundColor: Colors.amberAccent),
             BottomNavigationBarItem(icon: Icon(Icons.info),label: "profile",backgroundColor: Colors.blue),
             BottomNavigationBarItem(icon: Icon(Icons.notification_add),label: "Navigation",backgroundColor: Colors.deepOrangeAccent),
              BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Setting",backgroundColor: Colors.black54)

        ],
       currentIndex: _currentindex,
       onTap: (value) => 
       setState(() {
         _currentindex=value;
       })


      ),


   );
  }

}
