import 'package:flutter/material.dart';
import "package:webview_universal/webview_universal.dart";


class MyAppWEBVIEW extends StatefulWidget {
  const MyAppWEBVIEW({super.key});

  @override
  State<MyAppWEBVIEW> createState() => _MyAppState();
}

class _MyAppState extends State<MyAppWEBVIEW> {
  WebViewController webViewController = WebViewController();

  @override
  void initState() {
    super.initState();
    webViewController.init(
      context: context,
      setState: setState,
      uri: Uri.parse("https://flutter.dev"),
    );
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:WebView(controller: webViewController),
    );
  }
}