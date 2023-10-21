import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class MYHomeVideoplayer extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return _MYHomeVideoplayer2();
  }


}

class _MYHomeVideoplayer extends State<MYHomeVideoplayer>{

  
late FlickManager _flickManager;

  @override
  void initState(){
    super.initState();

    _flickManager= FlickManager(
      videoPlayerController: VideoPlayerController.network("http://videocdn.bodybuilding.com/video/mp4/62000/62792m.mp4"));
 }


  @override
  Widget build(BuildContext context) {
   return Scaffold(

      body:  Container(
     child: FlickVideoPlayer(
      flickManager: _flickManager),
   ),
   );
  }

}


class _MYHomeVideoplayer2 extends State<MYHomeVideoplayer>{

 
   @override
  void initState(){
    super.initState();
     

 }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
       body:Text("data"),
           );
  }

}
