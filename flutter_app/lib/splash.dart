import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/Component/JRTabBar.dart';

class SplashPage extends StatefulWidget {
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  Timer _t;

  @override
  void initState() {
    super.initState();
    _t = new Timer(const Duration(milliseconds: 1500), (){
      Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(
          builder: (BuildContext context) => new JRTabBar()), (
      Route route) => route == null
      );

    });
  }


  @override
  void dispose() {
    _t.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return new Material(
      color: new Color.fromARGB(255, 229, 178, 103),
      child: new Padding(
        padding: const EdgeInsets.only(top: 150.0),
          child: new Column(
            children: <Widget>[
              new Text(
                "金融Flutter",
                style: new TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
              new Text(
                "Rathen",
                style: new TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),

            ],

          ),
      ),

    );
  }

}