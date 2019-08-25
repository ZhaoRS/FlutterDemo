import 'package:flutter/material.dart';
import 'package:flutter_app/Home/HomeModel.dart';

class HomeListItem extends StatelessWidget {
  final HomeModel model;

  HomeListItem({this.model});

  @override
  Widget build(BuildContext context) {
    print('卧槽 快出来了');
    return new Padding(
        padding: const EdgeInsets.only(
          top: 3.0,
          left: 5.0,
          right: 5.0,
          bottom: 3.0,
        ),
      child: new SizedBox(
        child: new Card(
          elevation: 0.0,
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Expanded(
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[

                          new Row(
                            children: <Widget>[
                              new Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10.0,
                                    left: 10.0,
                                    bottom: 5.0,

                                  ),
                                child: new Text(model.name),
                              ),
                              new Expanded(
                                  child: new Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      new Padding(
                                          padding: const EdgeInsets.only(
                                            right: 10.0,
                                          ),
                                        child: new Text(
                                          model.salary,
                                          style: new TextStyle(
                                            color:  Colors.red
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                            ],
                          ),
                          new Container(
                            child:  new Text(
                              model.cname + '' + model.size,
                              textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.grey,
                                ),
                            ),
                            margin: const EdgeInsets.only(
                              top: 5.0,
                              left: 10.0,
                              bottom: 5.0,
                            )
                          ),


                          new Row(
                            children: <Widget>[
                              new Padding(
                                  padding: const EdgeInsets.only(
                                    top: 5.0,
                                    left: 10.0,
                                    right: 5.0,
                                    bottom: 15.0,
                                  ),
                                child: new Text(
                                  model.userName + model.title,
                                  style: TextStyle(
                                    color: new Color.fromARGB(255, 229, 178, 103),
                                  ),
                                ),
                              )
                            ],
                          ),
                          new Divider(),

                        ],
                      )
                  ),
                ],
            ),
        ),
      ),
    );
  }
}