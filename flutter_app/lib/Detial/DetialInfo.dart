import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/Order/OrderModel.dart';


class DetialInfo extends StatelessWidget {

  final OrderModel orderModel;
  DetialInfo(this.orderModel);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        child: Card(
          elevation: 0.0,
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  top: 10.0,
                  left: 15.0,
                  right: 15.0,
                  bottom: 0.0,
                ),
                child: Image.network(
                  orderModel.logo,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        child: Text(
                          orderModel.name,
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 15.0),
                        ),
                        margin: const EdgeInsets.only(top: 10.0,bottom: 5.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 5.0,
                          left: 0.0,
                          right: 5.0,
                          bottom: 5.0,
                        ),
                        child: Text(
                          orderModel.type + orderModel.size + orderModel.employee,
                          style: TextStyle(fontSize: 13.0, color: Colors.grey),
                        ),
                      )
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