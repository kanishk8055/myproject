import "dart:async";

import "package:cloud_firestore/cloud_firestore.dart";
import "package:firebase_core/firebase_core.dart";
import "package:firebase_messaging/firebase_messaging.dart";
import "package:flutter/material.dart";
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';

class Myoppanimation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
   
   return _Myoppanimation();
  }


}


void registerNotification() async {
  // 1. Initialize the Firebase app
  await Firebase.initializeApp();
  late FirebaseMessaging _messaging;

  // 2. Instantiate Firebase Messaging
  _messaging = FirebaseMessaging.instance;
  print('User granted permission'); 
  // 3. On iOS, this helps to take the user permissions
  NotificationSettings settings = await _messaging.requestPermission(
    alert: true,
    badge: true,
    provisional: false,
    sound: true,
  );

  if (settings.authorizationStatus == AuthorizationStatus.authorized) {
    print('User granted permission');
    // TODO: handle the received notifications
  } else {
    print('User declined or has not accepted permission');
  }
}


class _Myoppanimation extends State<Myoppanimation>{

 var blotag=false;
 var namevalue="No value";

  dynamic data;


 
@override
  void initState() {
    // TODO: implement initState
    super.initState();

    registerNotification();
    Timer(Duration(seconds: 8), () { 
      //    getData();
    });
  }

  @override
  Widget build(BuildContext context) {
   
   return Scaffold(
    
    body:  Column(
     mainAxisAlignment: MainAxisAlignment.center,
     crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          AnimatedCrossFade(
            firstChild: Container(
              width: 200,
              height: 200,
              color: Colors.cyanAccent,
            ), 
            secondChild:  Container(
              width: 100,
              height: 100,
              color: Colors.lightBlue,
            ), 
            sizeCurve: Curves.bounceIn,
            crossFadeState: blotag? CrossFadeState.showFirst:CrossFadeState.showSecond,
            duration: Duration(seconds: 5)),
                  
 
          Center(
       child:  ElevatedButton(onPressed: () {
        reload();
       }, 
       child: Text(namevalue)),
        )

        ],
      ),
    );
  }
  
  void reload() {
    addStringToSF("koushal");
    /*setState(() {
       blotag=!blotag;
    });*/
    
  }

    void getData() {
    getString(                                                                                                                                                                                                                                                   );
    /*setState(() {
       blotag=!blotag;
    });*/
    
  }

addStringToSF(String sttt) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('stringValue', sttt);
}


getString() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? getname=prefs.getString("stringValue");
  namevalue=getname!=null ? getname :"No Value set";
}


}