import 'package:flutter/material.dart';
import "package:webview_universal/webview_universal.dart";


class MyAppDaatePiker extends StatefulWidget {
  const MyAppDaatePiker({super.key});

  @override
  State<MyAppDaatePiker> createState() => _MyAppStateDate();
}

class _MyAppStateDate extends State<MyAppDaatePiker> {
  WebViewController webViewController = WebViewController();

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
       mainAxisAlignment: MainAxisAlignment.center,

       children: [
           ElevatedButton(
            onPressed: () async {
              
               DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1950),
                    lastDate: DateTime(2100));
 
                if (pickedDate != null) {
                  print(
                      pickedDate);
                }
                      
            }, child: Text("Click")),

       ],

      ),
    );
  }
}