import 'package:covd19/service/twilio%20chat.dart';
import 'package:covd19/ui/colors.dart';
import 'package:covd19/ui/LandingScreen.dart';

import 'package:covd19/ui/news1.dart';
//import 'package:covd19/ui/statedata.dart';
import 'package:covd19/ui/test.dart';
import 'package:covd19/ui/worldlist.dart';
import 'package:covd19/views/homepage.dart';
import 'package:flutter/material.dart';
import 'service/service_locator.dart';
import 'ui/colors.dart';
import 'ui/globalStats.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:covd19/ui/indiascreen.dart';
import 'package:line_icons/line_icons.dart';
import 'ui/helpline.dart';
import 'ui/statewidescreen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:clay_containers/clay_containers.dart';

void main() {
  setupLocator();

  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Bgcolor, fontFamily: 'Staatliches'),
      home: StartScreen()));
}

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  int _index = 3;
  Color baseColor = Color(0xFFF2F2F2);
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Overview(),
    Worldlist(),
    Twilioc(),
    News1(),
    News2(),
    HomePage(),
    Contact()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_index),
      ),
      bottomNavigationBar: CurvedNavigationBar(
    backgroundColor: baseColor,
    color: Bgcolor,
    height: 50,
    items: <Widget>[
      Icon(Icons.language, size: 30, color: baseColor,),
      Icon(Icons.list, size: 30, color: baseColor,),
      Icon(LineIcons.newspaper_o, size: 30,color: baseColor,),
      Icon(Icons.home, size: 30,color: baseColor,),
      Icon(Icons.compare_arrows, size: 30,color: baseColor,),
      Icon(Icons.pie_chart_outlined, size: 30,color: baseColor,),
      Icon(Icons.call, size: 30,color: baseColor,),
    ],
    index: 3,
    onTap: (index) {
      setState(() {
              _index = index;
            });
      //Handle button tap
    },
      ),
    );
  }
}