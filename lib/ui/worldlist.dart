import 'dart:convert';
import 'package:clay_containers/clay_containers.dart';
import 'package:covd19/ui/colors.dart';
import 'package:covd19/ui/sceensize.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:covd19/service/Apimode.dart';
import 'package:covd19/ui/countrydetail.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flag/flag.dart';


 class Worldlist extends StatefulWidget {
   @override
   _WorldlistState createState() => _WorldlistState();
 }
 
 class _WorldlistState extends State<Worldlist> {
  List<Corona> test, sample, _dat1;

  var jsondata;
  Details d, temp, a;
  String s = "https://api-corona.herokuapp.com/";
  Future<void> getData() async {
    final response = await http.get(s);
    jsondata = json.decode(response.body);
    d = Details.fromJson(jsondata);
    test = d.corona;
    setState(() {
      sample = test;
      _dat1 = sample;
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      //backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
      //backgroundColor:Color(0xFFFF3B4254),
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
              child: Column(
                children: <Widget>[
                  SizedBox(height: 30),
               ClayContainer(
                    width: screenAwareSize(300, context),
               
                    height: screenAwareSize(40, context),
                  
                        color: baseColor,
                      

                    child: TextField(
                      style: new TextStyle(color: Colors.black87),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 15.0),
                        border: InputBorder.none,
                        hintText: 'Search Here...',
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 12.0),
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                      ),
                      onChanged: (text) {
                        setState(() {
                          _dat1 = sample
                              .where((r) => (r.country
                                  .toLowerCase()
                                  .contains(text.trim().toLowerCase())))
                              .toList();
                        });
                      },
                    ),
                  ),
                 SizedBox(height:20,),
                  Expanded(
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      children: _dat1
                          .map((pointer) => Padding(
                                padding: const EdgeInsets.all(3),
                                child: Container(
                                  padding: EdgeInsets.only(left: 7),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Coronad(
                                                    corona: pointer,
                                                  )));
                                    },
                                    child: Card(
                                      color: baseColor,
                                      margin: new EdgeInsets.symmetric(
                                          horizontal: 8.0, vertical: 8.0),
                                      child: ListTile(
                                     
                                        leading: CircleAvatar(
                                          backgroundImage: AssetImage(pointer.flag
                                          //
                                              ),
                                        ),
                                        title: Text(
                                          pointer.country,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        subtitle: Text(
                                          "Total Cases : " +
                                              pointer.totalCases.toString(),
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        trailing: IconButton(
                                          icon: Icon(
                                            LineIcons.arrow_right,
                                            color: Colors.blueAccent,
                                          ),
                                          iconSize: 31,
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Coronad(
                                                          corona: pointer,
                                                        )));
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
