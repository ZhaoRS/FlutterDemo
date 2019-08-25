import 'dart:convert';

import 'package:meta/meta.dart';


class DataModel {
  final String name;
  final String avatar;
  final String componary;
  final String position;
  final String msg;

  DataModel({

    @required this.name,
    @required this.avatar,
    @required this.componary,
    @required this.position,
    @required this.msg,

  });


  static List<DataModel> fromJson(String json) {

    List<DataModel> _models = [];

    JsonDecoder decoder = new JsonDecoder();

    List mapData = decoder.convert(json)['list'];

    mapData.forEach((obj) {
      print('每个数据源' + obj['name']);
      DataModel model = new DataModel(
          name: obj['name'],
          avatar: obj['avatar'],
          componary: obj['componary'],
          position: obj['position'],
          msg: obj['msg']);
      _models.add(model);
    });
    return _models;
  }
}

