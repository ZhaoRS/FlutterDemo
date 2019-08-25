
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detial extends StatelessWidget {
  final String _detialInc;

  Detial(this._detialInc);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Padding(
        padding: const EdgeInsets.only(
          top: 10.0,
          left: 10.0,
          right: 10.0,
          bottom: 10.0,
        ),
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      '商品简介',
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),
                ],
              ),
              new RichText(
                text: new TextSpan(
                  text: _detialInc,
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.black,
                  )
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}