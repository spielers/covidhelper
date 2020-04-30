import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:covd19/service/getdata.dart';
import 'package:covd19/ui/colors.dart';
import 'package:clay_containers/clay_containers.dart';

class Overview extends StatefulWidget {
  @override
  _OverviewState createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  var jsondata;
  var cases;
  var now = new DateTime.now();
  CoronaDetails d;
  String s = "https://api-corona.herokuapp.com/total";
  Future<void> getData() async {
    final response = await http.get(s);
    jsondata = json.decode(response.body);
    d = CoronaDetails.fromJson(jsondata);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: baseColor,
      body: d == null
          ? Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.blue,
                valueColor: new AlwaysStoppedAnimation<Color>(Fgcolor),
              ),
            )
          : RefreshIndicator(
              onRefresh: getData,
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: d.main
                    .map(
                      (pointer) => Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                          top: 40,
                        ),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                            height: 20,
                            ),
                            Center(
                              child:ClayContainer(
                            color: baseColor,
                            height: 150,
                            width: 200,
                            borderRadius: 20,
                            //depth: 50,
                           // spread: 50,
                            child: Stack(
                             children: <Widget>[
                           Container(child: 
                            Image(
                             alignment: Alignment.center,
                             image: AssetImage("assests/doc.png"),
                             height: (150),
                             width:(200),
                                 ),
                                  ),
                             ],
                              ),
                             ),
                            ),
                            SizedBox(
                              height:20,
                            ),
                            Center(
                              child:
                              Container(
                              child: Text(
                                "Global Stats",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  inherit: true,
                                  color: Colors.black,
                                  letterSpacing: 0.4,
                                ),
                              ),
                            ),
                            ),
                          SizedBox(
                              height: 20,
                            ),
                            Row(
                               children:
                               <Widget>[
                               ClayContainer(
                                 color: baseColor,
                                 height: 100,
                                 width: 150,
                                 borderRadius: 20,
                                 child:
                                 Center(
                                   child:
                                   Column(
                                   children: <Widget>[
                                     SizedBox(
                                  height:20,
                                ),
                                     Text("Total cases",
                                style: TextStyle(
                                  color:Colors.black87,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                                SizedBox(
                                  height:20,
                                ),
                                  Text(pointer.coronaCases,
                                style: TextStyle(
                                  color:Colors.redAccent,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                                   ],
                                 ),
                                 ),
                                 
                               ),
                               SizedBox(
                                 width:50,
                               ),
                                ClayContainer(
                                 color: baseColor,
                                 height: 100,
                                 width: 150,
                                 borderRadius: 20,
                                  child:
                                 Center(
                                   child:
                                   Column(
                                   children: <Widget>[
                                     SizedBox(
                                  height:20,
                                ),
                                     Text("Total Deaths",
                                style: TextStyle(
                                  color:Colors.black87,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                                SizedBox(
                                  height:20,
                                ),
                                  Text(pointer.coronaDeaths,
                                style: TextStyle(
                                  color:Colors.redAccent,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                                   ],
                                 ),
                                 ),
                               ),
                               ]
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: <Widget>[
                                ClayContainer(
                                 color: baseColor,
                                 height: 100,
                                 width: 150,
                                 borderRadius: 20,
                                 
                               ),
                               SizedBox(
                                 width:50,
                               ),
                                ClayContainer(
                                 color: baseColor,
                                 height: 100,
                                 width: 150,
                                 borderRadius: 20,
                                  child:
                                 Center(
                                   child:
                                   Column(
                                   children: <Widget>[
                                     SizedBox(
                                  height:20,
                                ),
                                     Text("Recoverd Cases",
                                style: TextStyle(
                                  color:Colors.black87,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                                SizedBox(
                                  height:20,
                                ),
                                  Text(pointer.recoverd,
                                style: TextStyle(
                                  color:Colors.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                                   ],
                                 ),
                                 ),
                               ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Active Cases",
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                inherit: true,
                                letterSpacing: 0.4,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: <Widget>[
                                ClayContainer(
                                  color: baseColor,
                                  height: 100,
                                  width: 100,
                                  borderRadius: 50,
                                  curveType: CurveType.concave,
                                  child: Column(children: <Widget>[
                                     Padding(
                                  padding: EdgeInsets.fromLTRB(20, 20, 0, 5),),
                                    ClayText("Infected ", textColor: Colors.black,),
                                   Padding(
                                  padding: EdgeInsets.fromLTRB(20, 10, 0, 5),),
                                 //  ClayText(pointer.coronaCurrent, textColor: Colors.yellow,),
                                 Text(
                                  pointer.coronaCurrent,
                                  style: TextStyle(
                                  fontSize: 17,
                                 color: Colors.blueAccent,
                                  fontWeight: FontWeight.bold,
                                 ),
                                 ),
                                  ],
                                  ),
                            
                                     
                                ),
                                SizedBox(
                                  width:20,
                                ),
                                ClayContainer(
                                  color: baseColor,
                                  height: 100,
                                  width: 100,
                                  borderRadius: 60,
                                  curveType: CurveType.concave,
                                  child: Column(children: <Widget>[
                                     Padding(
                                  padding: EdgeInsets.fromLTRB(20, 20, 0, 5),),
                                    ClayText("Mild ", textColor: Colors.black,),
                                   Padding(
                                  padding: EdgeInsets.fromLTRB(20, 10, 0, 5),),
                                 //  ClayText(pointer.coronaMild, textColor: Colors.orangeAccent,),
                                 Text(
                                  pointer.coronaMild,
                                  style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold,
                                     ),
                                     ),
                                  ],
                                  ),
                                ),
                                SizedBox(
                                  width:20,
                                ),
                                ClayContainer(
                                  color: baseColor,
                                  height: 100,
                                  width: 100,
                                  borderRadius: 75,
                                  curveType: CurveType.concave,
                                  child: Column(children: <Widget>[
                                     Padding(
                                  padding: EdgeInsets.fromLTRB(20, 20, 0, 5),),
                                    ClayText("Critical ", textColor: Colors.black,),
                                   Padding(
                                  padding: EdgeInsets.fromLTRB(20, 10, 0, 5),),
                               //    ClayText(pointer.coronaCritical, textColor: Colors.red,            ),
                                Text(
                              pointer.coronaCritical,
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                                  ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "CLOSED CASES",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                                inherit: true,
                                letterSpacing: 0.4,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: <Widget>[
                                ClayContainer(
                                  color: baseColor,
                                  height: 100,
                                  width: 100,
                                  borderRadius: 50,
                                  curveType: CurveType.concave,
                                  child: Column(children: <Widget>[
                                     Padding(
                                  padding: EdgeInsets.fromLTRB(20, 20, 0, 5),),
                                    ClayText("Total outcome", textColor: Colors.black,),
                                   Padding(
                                  padding: EdgeInsets.fromLTRB(20, 10, 0, 5),),
                                 //  ClayText(pointer.coronaCurrent, textColor: Colors.yellow,),
                                 Text(
                                  pointer.coronaClose,
                                  style: TextStyle(
                                  fontSize: 17,
                                 color: Colors.orange,
                                  fontWeight: FontWeight.bold,
                                 ),
                                 ),
                                  ],
                                  ),
                            
                                     
                                ),
                                SizedBox(
                                  width:20,
                                ),
                                ClayContainer(
                                  color: baseColor,
                                  height: 100,
                                  width: 100,
                                  borderRadius: 60,
                                  curveType: CurveType.concave,
                                  child: Column(children: <Widget>[
                                     Padding(
                                  padding: EdgeInsets.fromLTRB(20, 20, 0, 5),),
                                    ClayText("Discharged", textColor: Colors.black,),
                                   Padding(
                                  padding: EdgeInsets.fromLTRB(20, 10, 0, 5),),
                                 //  ClayText(pointer.coronaMild, textColor: Colors.orangeAccent,),
                                 Text(
                                  pointer.coronaDischarged,
                                  style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                     ),
                                     ),
                                  ],
                                  ),
                                ),
                                SizedBox(
                                  width:20,
                                ),
                                ClayContainer(
                                  color: baseColor,
                                  height: 100,
                                  width: 100,
                                  borderRadius: 75,
                                  curveType: CurveType.concave,
                                  child: Column(children: <Widget>[
                                     Padding(
                                  padding: EdgeInsets.fromLTRB(20, 20, 0, 5),),
                                    ClayText("Death ", textColor: Colors.black,),
                                   Padding(
                                  padding: EdgeInsets.fromLTRB(20, 10, 0, 5),),
                               //    ClayText(pointer.coronaCritical, textColor: Colors.red,            ),
                                Text(
                              pointer.coronaDeaths,
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                                  ],
                                  ),
                                ),
                              ],
                            ),
                          
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
    );
  }
}
  