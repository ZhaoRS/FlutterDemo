import 'dart:convert';

import 'package:meta/meta.dart';


class OrderModel {
  final String name;
  final String logo;
  final String location;
  final String type;
  final String size;
  final String employee;
  final String hot;
  final String count;
  final String inc;

  OrderModel({

    @required this.name,
    @required this.logo,
    @required this.location,
    @required this.type,
    @required this.size,
    @required this.employee,
    @required this.hot,
    @required this.count,
    @required this.inc,

  });


  static List<OrderModel> fromJson(String json) {

    List<OrderModel> _models = [];

    JsonDecoder decoder = new JsonDecoder();

    List mapData = decoder.convert(json)['list'];

    mapData.forEach((obj) {
      print('每个数据源' + obj['name']);
      OrderModel model = new OrderModel(
          name: obj['name'],
          logo: obj['logo'],
          location: obj['location'],
          type: obj['type'],
          size: obj['size'],
          employee: obj['employee'],
          hot: obj['hot'],
          count: obj['count'],
          inc: obj['inc'],
      );
      _models.add(model);
    });
    return _models;
  }
}

