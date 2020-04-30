import 'package:webview_flutter/webview_flutter.dart';

import 'LandingScreen.dart';
import 'colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:clay_containers/clay_containers.dart';





class News2 extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News2> {
  
  @override
  Widget build(BuildContext context) {
   // Color baseColor = Color(0xFFF2F2F2);
  return Scaffold(
   /* appBar: AppBar(
      backgroundColor: baseColor,
      title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Covid19",
          style:
          TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
        ),
        Text(
          "live",
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.w600),
        ),
      ],
    ),
      ), */
    body: 
       WebView(
         initialUrl: "https://www.covid19india.org/",
          javascriptMode: JavascriptMode.unrestricted,)
          //onWebViewCreated: (WebViewController webViewController) {
           /// _controller.complete(webViewController);
         // },
        );

      

 
  }
}
