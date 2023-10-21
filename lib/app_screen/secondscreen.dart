import 'package:flutter/material.dart';

class MySecondClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text("Second screen"),),
      body:  Center(
          child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget> [
                      FloatingActionButton(
                        child: Icon(Icons.arrow_back),
                        onPressed:() {
                         Navigator.pop(context);
                        },
                        ),
                 ],

          ),

      ),
    );
  }

}