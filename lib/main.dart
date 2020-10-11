import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}


void playSound(int soundNumber) {
  final player = AudioCache();
  player.play('note$soundNumber.wav');
}

Expanded buttonKeys({int soundNumber, int buttonNumber}) {
  return Expanded(
    child: FlatButton(
      onPressed: () {

          playSound(soundNumber);


      },
      child: Image.asset('images/button$buttonNumber.png'),
    ),
  );
}



class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.white30,
          title: Text('AppBar'),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/tree.jpg'),
              ),
              Text(
                'Trees',
                style: TextStyle(
                  fontSize: 40.0,
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                ),
              ),
              Text(
                'DEVELOPED BY YASEEN',
                style: TextStyle(
                  fontSize: 25.0,
                  fontFamily: 'Sans',
                  color: Colors.white,
                ),
              ),

              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),

              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                  ),
                  title: Text('+91 9876543210'),
                ),
              ),

              Card(
                color: Colors.white,
                margin:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: ListTile(
                  leading:  Icon(
                    Icons.email,
                  ),
                  title:   Text('youremail@gmail.com'),

                ),
              ),

              SizedBox(
                height: 20.0,
                width: 160.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),


              Text(
                'My Musical Buttons',
                style: TextStyle(
                  fontSize: 25.0,
                  color: CupertinoColors.white,
                  fontFamily: 'Sans',
                ),
              ),

              SizedBox(
                height: 25.0,
              ),

              Row(
                children: <Widget>[
                  buttonKeys(soundNumber: 1, buttonNumber: 1),
                  buttonKeys(soundNumber: 2, buttonNumber: 2),
                  buttonKeys(soundNumber: 3, buttonNumber: 3),
                ],
              ),
              Row(
                children: <Widget>[
                  buttonKeys(soundNumber: 4, buttonNumber: 4),
                  buttonKeys(soundNumber: 5, buttonNumber: 5),
                  buttonKeys(soundNumber: 6, buttonNumber: 6),
                  buttonKeys(soundNumber: 7, buttonNumber: 7),
                ],
              ),






            ],
          ),
        ),
      ),
    );
  }
}
