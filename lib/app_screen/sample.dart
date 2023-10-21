import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      
    return Scaffold(
         appBar: AppBar( title: Text("Home")),
           body: Center(
            child: Text("Home USER"),
           )

    );
  }


}


class InfoParent extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
      return _InfoParent();
    
  }

}

class _InfoParent extends State<InfoParent> {

var _width=200.0;
var _height=300.0;

  @override
  Widget build(BuildContext context) {
 
     return Scaffold(
         appBar: AppBar( title: Text("Info")),
           body: Center(
             child: Column(
              children: [
                 AnimatedContainer(
                  width: _width,
                  height: _height,
                  color: Color.fromARGB(255, 6, 136, 93),
                  duration: Duration(seconds: 5)
                  ),
                  ElevatedButton(onPressed: () {
                    setState(() {
                      _width=400.0;
                      _height=200.0;
                    });
                  }, child: Text("Animated"))

              ],
             ),

           ),

    );
  }


}


class NavigationData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      
    return Scaffold(
         appBar: AppBar( title: Text("Navigation")),
           body: Center(
            child: Text("Navigation USER"),
           )

    );
  }


}



