import 'dart:convert';

import 'package:MyApp/regitermodal.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

 void calltask(){
       print("Test1");
       test2();
       print("Test3");
       getData();
       signup("eve.holt@reqres.in", "pistol");

 }

  void callfacebooklogin(){
       print("facebook login");
       getData();
  }

 void test2 () async{

     await Future.delayed(Duration(seconds: 5),() {
           print("Test2");
      },);
    print("Test5");
 }

Future getData() async{
 
 http.Response response;
 response= await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts/1"));

 if(response.statusCode==200){
  print(response.body.toString());
      var data= jsonDecode(response.body.toString());
      RegModel model = RegModel.fromJson(data);
      
      print(model.body);

     print(model.title);
     print(model.userId);
  

  
 }
 }

 Future<void> signup(String emailid,String passwordtag) async {
    http.Response response;
    response= await http.post(Uri.parse("https://reqres.in/api/register"), 
      body: {
        'email':emailid,
        'password':passwordtag
      });

   if(response.statusCode==200){
      var data= jsonDecode(response.body.toString());
      print(data);
      print(data['token']);
      print("account create success fully");
   }else{
    print("Failed");
   }   
 }
//var url = Uri.https('https://jsonplaceholder.typicode.com/posts/1', 'whatsit/create');
//var response = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
  


class AsyncTask2 extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
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
              width: 200,
              height: 200,
              color: Colors.lightBlue,
            ), 
            crossFadeState: CrossFadeState.showFirst,
            duration: Duration(seconds: 5)),
                  
 
          Center(
       child:  ElevatedButton(onPressed: () {
         callfacebooklogin();
       }, 
       child: Text("Clik here")),
        )

        ],
      ),
    );
  }

}

class AsyncTask extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    
    return ListView(
  padding: const EdgeInsets.all(8),
  children: <Widget>[
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('Entry A')),
    ),
    Container(
      height: 50,
      color: Colors.amber[500],
      child: const Center(child: Text('Entry B')),
    ),
    Container(
      height: 50,
      color: Colors.amber[100],
      child: const Center(child: Text('Entry C')),
    ),
  ],
);
  }

}



class AsyncTask5 extends StatelessWidget{


final List<String> entries = <String>['A', 'B', 'C','D','K'];

  @override
  Widget build(BuildContext context) {
    
    return ListView.builder(
      itemCount: entries.length,
      itemBuilder: (context, index) {
        
         return Container(
        height: 50,
        color: Colors.amber,
        child: Center(child: Text('Entry ${entries[index]}')),
        );

      },
    
    );
  }

}

class SNACKBARDATA extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      body:  ElevatedButton
    (
      onPressed: () {
        final snackbar=SnackBar(
       content: Text("Hello data"),
        duration: Duration(seconds: 5),  
        action: SnackBarAction(
          label: "click", 
          onPressed: () {
            print("DATA is data");
          },),
      ); 

       ScaffoldMessenger.of(context).showSnackBar(snackbar);
      }, 
      child: Text("Click Here")),
    );
  }
}


class Tooltipclass extends StatelessWidget{
  
  void showToast() {  
    Fluttertoast.showToast(  
        msg: 'This is toast notification',  
        toastLength: Toast.LENGTH_SHORT,  
        gravity: ToastGravity.BOTTOM,  
        backgroundColor: Colors.red,  
        textColor: Colors.yellow  
    );  
  }
  
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      body:  Scaffold(
      body:  Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.amber,
          strokeWidth: 10.0,
          valueColor: AlwaysStoppedAnimation(Colors.blueGrey),
        ),
      ),
    ));
  }
}


class Croselclass extends StatelessWidget{
  
  
  
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      body:  Center(
        child: CarouselSlider(
          items: _Imagepath.map(
            (imagepath) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: NetworkImage(imagepath),
                        fit: BoxFit.cover)
                    ),
                  );
                },);
            },
          ).toList(),
           options: CarouselOptions(
            height: 400,
            autoPlay: true,
            enlargeCenterPage: true
           )),
      ),
    );
  }

final List _mylist=[Colors.amber,Colors.black,Colors.red];
final List _Imagepath=[
  "https://images.unsplash.com/photo-1500622944204-b135684e99fd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1761&q=80",
  "https://images.unsplash.com/photo-1679678691006-3afa56204979?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1169&q=80",
  "https://images.unsplash.com/photo-1420593248178-d88870618ca0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80"
];

}



