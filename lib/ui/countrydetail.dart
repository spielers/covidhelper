import 'package:clay_containers/clay_containers.dart';
import 'package:covd19/service/Apimode.dart';
import 'package:covd19/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:covd19/ui/sceensize.dart';

class Coronad extends StatelessWidget {
  final Corona corona;

  Coronad({this.corona});

  bodyWidget(BuildContext context) => Stack(
        children: <Widget>[
          SizedBox(height:20,),
          Positioned(
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width - 20,
            left: 10.0,
            top: MediaQuery.of(context).size.height * 0.1,
            child: Padding(
              padding: const EdgeInsets.only(left: 3.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 80),
                  Row(
                    children: <Widget>[
                      colorCard("Total Cases", corona.totalCases, context,
                          Color(0xFFA0A05A)),
                      colorCard("New Cases", corona.newCases, context,
                          Color(0xFFFFC75F)),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      colorCard("Total Deaths", corona.totalDeaths, context,
                          Color(0xFFFF6F91)),
                      colorCard("New Deaths", corona.newDeaths, context,
                          Color(0xFFFF9671)),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      colorCard("Total Recoverd", corona.totalRecoverd, context,
                          Color(0xFF008F7A)),
                      colorCard("Active Cases", corona.activeCases, context,
                          Color(0xFFff3f5e)),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      colorCard("Serious Cases", corona.serious, context,
                          Color(0xFFFF8066)),
                      colorCard(
                          "Avg 1M", corona.average, context, Color(0xFFda787f)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            
            child: Hero(
                tag: corona.activeCases,
                child: ClayContainer(
                  
             color: baseColor,
            height: 140,
            width: 140,
            borderRadius: 30,
           // depth: 50,
          //  spread: 50,
          child: Stack(
            children: <Widget>[
             // Flags.getMiniFlag('AD', 50, null),
              Container(child: 
              Image(
                    alignment: Alignment.center,
                    image: AssetImage(corona.flag),
                    height: (140),
                    width:(140),
                  ),
              ),
            ],
          ),
      ),
                ),
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baseColor,
      
      appBar:AppBar(
    backgroundColor: baseColor,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          corona.country,
          style:
          TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
        ),
        Text(
          "  Stats",
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.w600),
        )
      ],
    ),
    // backgroundColor: Colors.transparent,
    elevation: 1.0,
  ),
      body: bodyWidget(context),
    );
  }
}

Widget colorCard(
    String text, String fields, BuildContext context, Color color) {
  final _media = MediaQuery.of(context).size;
  return Container(
    margin: EdgeInsets.only(top: 9, right: 9),
    padding: EdgeInsets.all(25),
    height: screenAwareSize(80, context),
    width: _media.width / 2 - 25,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(17),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        
        Text(
          text,
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          "${fields.toString()}",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    ),
  );
}
