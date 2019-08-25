import 'package:flutter/material.dart';
import 'package:flutter_app/Order/OrderModel.dart';

class OrderListItem extends StatelessWidget {
  final OrderModel model;

  OrderListItem({this.model});

  @override
  Widget build(BuildContext context) {
    print('卧槽 快出来了');
    return new Padding(
      padding: const EdgeInsets.only(
        top: 3.0,
        left: 5.0,
        right: 5.0,
        bottom: 3.0
      ),
      child: SizedBox(
        child: Card(
          elevation: 0.0,
          child: new Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0,
                      left: 15.0,
                      right: 15.0,
                      bottom: 0.0
                  ),
                child: new Image.network(model.logo,width: 50.0,height: 50,),

              ),
              new Expanded(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                       new Container(
                          child: Text(
                            model.name,
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 15.0),
                          ),
                          margin: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                        ),
                       new Padding(
                            padding: const EdgeInsets.only(
                                top: 5.0,
                                left: 0.0,
                                right: 5.0,
                                bottom: 5.0
                            ) ,
                          child: Text(
                            model.location,
                            style: TextStyle(fontSize: 13.0, color:  Colors.grey),
                          ),
                        ),
                       new Padding(
                          padding: const EdgeInsets.only(
                              top: 5.0,
                              left: 0.0,
                              right: 5.0,
                              bottom: 5.0
                          ) ,
                          child: Text(
                            model.type + model.size,
                            style: TextStyle(fontSize: 13.0, color:  Colors.grey),
                          ),
                        ),
                       new Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 5.0,
                                  left: 0.0,
                                  right: 5.0,
                                  bottom: 15.0
                              ) ,
                              child: Text(
                                model.inc,
                                style: TextStyle(fontSize: 13.0, color:  Colors.grey),
                                maxLines: 3,
                              ),
                            ),
                           new Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                   new Padding(
                                      padding: const EdgeInsets.only(
                                        bottom: 8.0,

                                      ),
                                      child: const Icon(
                                          Icons.keyboard_arrow_right,
                                          color: Colors.grey,
                                      ),
                                    )
                                  ],
                                )
                            ),
                          ],
                        ),
                       new Divider(),
                      ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}