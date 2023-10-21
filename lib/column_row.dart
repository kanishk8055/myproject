import 'package:MyApp/app_screen/tabelcontent.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class MYHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return _MyHOMESTATE();
  }


}

class _MyHOMESTATE extends State<MYHome>{

late FlickManager _flickManager;

  @override
  void initState(){
    super.initState();

    _flickManager= FlickManager(
      videoPlayerController: VideoPlayerController.network("http://videocdn.bodybuilding.com/video/mp4/62000/62792m.mp4"));
 }

  String username="";

  @override
  Widget build(BuildContext context) {
   

   return Scaffold(
appBar:  AppBar( title:  Text("HOMETAG"),),
body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
   Container(
     child: FlickVideoPlayer(
      flickManager: _flickManager),
   ),

    Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Text("Hello"),
    ),Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Text("Hello"),
    ),
    Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Text("Hello"),
    ), Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.circular(5)
      ),
      child: TextField(
          onSubmitted: (String usern){
              setState(() {
                username=usern;
              });
          },

      ),
    ),
    Text("My name is $username"),
    FloatingActionButton(
      onPressed: null,
      child: Icon(Icons.back_hand),
      ),
      ElevatedButton(
        onPressed:() => {
          Navigator.push(context, MaterialPageRoute(builder: (context) => MYHome(),))
       },
         child: Text("Click here")
         
         )
  ],
),

   );
    

  }

}