import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetialBottomView extends StatelessWidget {
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
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              text: '详情页',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}