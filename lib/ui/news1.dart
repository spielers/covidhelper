import 'package:covd19/ui/precaution.dart';

import 'LandingScreen.dart';
import 'colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:clay_containers/clay_containers.dart';
import 'package:covd19/service/Apimode.dart';
import 'package:flag/flag.dart';




class News1 extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News1> {
  @override
  Widget build(BuildContext context) {
   // Color baseColor = Color(0xFFF2F2F2);
  return Scaffold(
    appBar: AppBar(
      backgroundColor: baseColor,
      title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Quarantine",
          style:
          TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
        ),
        Text(
          "Help",
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.w600),
        ),
      ],
    ),
      ),
    body: 
    
    Column(
      
    children: <Widget>[
      Container(margin: EdgeInsets.all(10),),
      ClayContainer(
        color: baseColor,
            height: 200,
            width: 250,
            borderRadius: 30,
           // depth: 50,
          //  spread: 50,
          child: Stack(
            children: <Widget>[
             // Flags.getMiniFlag('AD', 50, null),
              Container(child: 
              Image(
                    alignment: Alignment.center,
                    image: AssetImage("assests/f2.png"),
                    height: (200),
                    width:(250),
                  ),
              ),
            ],
          ),
      ),
      Container(margin: EdgeInsets.all(20),),
      Container(child:Text("Covid-19",
      style: TextStyle(
        color:Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),),),
      Container(child:Text("Precautions",
      style: TextStyle(
        color:Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),),),
      Container(margin: EdgeInsets.all(20),),
      Row(children: <Widget>[
        SizedBox(width:20,),
      ClayContainer(
        color: baseColor,
            height: 100,
            width: 100,
            borderRadius: 30,
           // depth: 50,
          //  spread: 50,
          child: Stack(
            children: <Widget>[
             // Flags.getMiniFlag('AD', 50, null),
              Container(child: 
              Image(
                    alignment: Alignment.center,
                    image: AssetImage("assests/precau/p1.png"),
                    height: (100),
                    width:(100),
                  ),
              ),
            ],
          ),
      ),
       SizedBox(width:20,),
      ClayContainer(
        color: baseColor,
            height: 100,
            width: 100,
            borderRadius: 30,
           // depth: 50,
          //  spread: 50,
          child: Stack(
            children: <Widget>[
             // Flags.getMiniFlag('AD', 50, null),
              Container(child: 
              Image(
                    alignment: Alignment.center,
                    image: AssetImage("assests/precau/p2.png"),
                    height: (100),
                    width:(100),
                  ),
              ),
            ],
          ),
      ), SizedBox(width:20,),
      ClayContainer(
        color: baseColor,
            height: 100,
            width: 100,
            borderRadius: 30,
           // depth: 50,
          //  spread: 50,
          child: Stack(
            children: <Widget>[
             // Flags.getMiniFlag('AD', 50, null),
              Container(child: 
              Image(
                    alignment: Alignment.center,
                    image: AssetImage("assests/precau/p3.png"),
                    height: (100),
                    width:(100),
                  ),
              ),
            ],
          ),
      ),
    ],
    ),
     SizedBox(height:20,),
      Row(children: <Widget>[
        SizedBox(width:20,),
      ClayContainer(
        color: baseColor,
            height: 100,
            width: 100,
            borderRadius: 30,
           // depth: 50,
          //  spread: 50,
          child: Stack(
            children: <Widget>[
             // Flags.getMiniFlag('AD', 50, null),
              Container(child: 
              Image(
                    alignment: Alignment.center,
                    image: AssetImage("assests/precau/p4.png"),
                    height: (100),
                    width:(100),
                  ),
              ),
            ],
          ),
      ),
      SizedBox(width:20,),
      ClayContainer(
        color: baseColor,
            height: 100,
            width: 100,
            borderRadius: 30,
           // depth: 50,
          //  spread: 50,
          child: Stack(
            children: <Widget>[
             // Flags.getMiniFlag('AD', 50, null),
              Container(child: 
              Image(
                    alignment: Alignment.center,
                    image: AssetImage("assests/precau/p5.png"),
                    height: (100),
                    width:(100),
                  ),
              ),
            ],
          ),
      ), 
     SizedBox(width:20,),
      ClayContainer(
        color: baseColor,
            height: 100,
            width: 100,
            borderRadius: 30,
           // depth: 50,
          //  spread: 50,
          child: Stack(
            children: <Widget>[
             // Flags.getMiniFlag('AD', 50, null),
              Container(child: 
              Image(
                    alignment: Alignment.center,
                    image: AssetImage("assests/precau/p6.png"),
                    height: (100),
                    width:(100),
                  ),
              ),
            ],
          ),
      ),
    ],
    ),
    ],  
      ),
  );
  }
}
