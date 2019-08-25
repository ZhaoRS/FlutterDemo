import 'package:flutter/material.dart';
import 'package:flutter_app/Data/DataModel.dart';

class DataListItem extends StatelessWidget {
  final DataModel model;

  DataListItem({this.model});

  @override
  Widget build(BuildContext context) {
    print('卧槽 快出来了');
    return  new SizedBox(
        child: new Card(
          elevation: 0.0,
          child: new Row(
            children: <Widget>[
              new Padding(
                  padding: const EdgeInsets.only(
                    top: 15.0,
                    left: 15.0,
                    right: 15.0,
                    bottom: 0,
                  ), 
                child: new CircleAvatar(
                  radius: 20.0,
                  backgroundImage: new NetworkImage(model.avatar),
                ),
              ),
              new Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        child: new Text(
                          model.name,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                        margin: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 5.0,
                          left: 0.0,
                          right: 5.0,
                          bottom: 5.0,
                        ),
                        child: Text(model.componary + model.position, style: TextStyle(fontSize: 13.0, color: Colors.grey),),

                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 5.0,
                          left: 0.0,
                          right: 5.0,
                          bottom: 10.0,
                        ),
                        child: Text(model.msg, style: TextStyle(fontSize: 13.0, color: Colors.grey),),
                      ),
                      new Divider(),

                    ],
                  )
              )
              
              
              
            ],
          ),
        ),
    );
  }
}