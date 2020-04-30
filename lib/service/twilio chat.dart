import 'package:twilio_flutter/twilio_flutter.dart';
import 'package:flutter/material.dart';


void main() => runApp(Twilioc());

class Twilioc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage1(title: 'SOS HELPER'),
    );
  }
}

class MyHomePage1 extends StatefulWidget {
  MyHomePage1({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage1> {
  TwilioFlutter twilioFlutter;

  @override
  void initState() {
    twilioFlutter = TwilioFlutter(
        accountSid: '**********************',
        authToken: 'xxxxxxxxxxxxxxx',
        twilioNumber: '+...............');

    super.initState();
  }

  void sendSms() {
    twilioFlutter.sendSMS(
        toNumber: '+................', messageBody: 'Thank You for covid help');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
      
        child: Column(
         children: <Widget>[
           SizedBox(
             height: 60,
           ),
              Image(
                    alignment: Alignment.center,
                    image: AssetImage("assests/precau/p11.jpg"),
                    height: (300),
                    width:(300),
                  ),
              
              SizedBox(
             height: 150,
           ),
            Text(
          'Click the button to send SOS SMS.',
        ),
        
         ],
        )
        
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: sendSms,
        tooltip: 'Send Sms',
        child: Icon(Icons.send),
        
      ),
    );
  }
}