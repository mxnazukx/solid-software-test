import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
          body: new MainWindow(),
        ),
      )
  );
}

class MainWindow extends StatefulWidget{

  MainWindow();
  @override
  State createState() {
    return new MainWindowState();
  }

}

class MainWindowState extends State{
  int _red = 255;
  int _green = 255;
  int _blue = 255;


  MainWindowState();

  void onPressed(){
    setState(() {
      _red = Random().nextInt(255);
      _green = Random().nextInt(255);
      _blue = Random().nextInt(255);
    });
  }


  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      child: new Container(
        child: new Center(
          child: new Text("Hey there"),
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: new BoxDecoration(
            color: Color.fromRGBO(_red, _green, _blue, 1)
        ),
      ),
      onTap: onPressed,
    );
  }
}