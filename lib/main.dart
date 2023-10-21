import 'dart:async';

import 'package:MyApp/app_screen/maintool.dart';
import 'package:MyApp/app_screen/sample.dart';
import 'package:MyApp/column_row.dart';
import 'package:MyApp/showdatepicker.dart';
import 'package:MyApp/video.dart';
import 'package:MyApp/webview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app_screen/asynctask.dart';
import 'app_screen/botttomnavigation.dart';
import 'app_screen/secondscreen.dart';
import 'app_screen/splashscreen.dart';
import 'dart:io';

/*void main() {
  
   runApp(MaterialApp( home: Tooltipclass(),));
}*/


void main(){
  print("enter your name");
  var name=stdin.readLineSync();
  print("my name $name");
//  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();//
//runApp(MaterialApp(
	//	home:Myoppanimation(), //Scaffold
		//) //MaterialApp
	//);
}


class Stackclass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
			appBar: AppBar(
				title:InkWell(
          onTap: () {
            print("clik here");
          },
          child: Container( 
          
          margin: EdgeInsets.only(left:0 ,right:30 ,bottom: 0,top: 0),
          alignment: Alignment.topRight,
          child:  Text('GeeksforGeeks'),),
			
			)
      ,
      	backgroundColor: Colors.greenAccent[400],
        )
        , //AppBar
			body: Center(
				child: SizedBox(
        
				width: 300,
				height: 300,
				child: Center(
					child: Stack(
					children: <Widget>[
						Container(
						width: 300,
						height: 300,
						color: Colors.red,
						), //Container
						Center(
              child: Container(
						width: 250,
						height: 250,
						color: Colors.black,
						),
            ), //Container
						Center(
              child: Container(
						height: 200,
						width: 200,
						color: Colors.purple,
						),
            ), //Container
					], //<Widget>[]
					), //Stack
				), //Center
				), //SizedBox
			) //Center
			),
    );
  }
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Croselclass(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5), () {
         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home(),));
     });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                  margin: EdgeInsets.all(10),
                    width: double.infinity,
                    height: 150,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('images/img.jpg')),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(

                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15,bottom: 15),
              child: Text(
                'Forgot Password',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => MySecondClass()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),
            Image(image: NetworkImage("https://dummyimage.com/600x400/000/fff")),
            Text('New User? Create Account')
          ],
        ),
      ),
    );
  }
}

class alertdialogclass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        body: ElevatedButton(
          onPressed: () {
            ShowAlertDialog(context);
          }, 
          child: Text("Hello")),
    );
  }


  ShowAlertDialog(BuildContext context){

     Widget okbutton= ElevatedButton(
    onPressed: () {
      Navigator.of(context).pop();
    }, child: Text("OK"));

   AlertDialog alertDialog=new AlertDialog(
    title:Text("Simple alert"),
    content: Text("This is an Message"),
    actions: [
        okbutton,
    ],
   );

  showDialog(context: context,
   builder: (BuildContext context) {
     return alertDialog;
   },);
  

  }



}