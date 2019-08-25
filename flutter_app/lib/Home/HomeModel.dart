import 'dart:convert';

import 'package:meta/meta.dart';


class HomeModel{
  final String name;
  final String cname;
  final String size;
  final String salary;
  final String userName;
  final String title;

  HomeModel({
    @required this.name,
    @required this.cname,
    @required this.size,
    @required this.salary,
    @required this.userName,
    @required this.title,
  });

  static List<HomeModel> getfromJson(String json) {
    print('进入了model');
    print(json);
    List<HomeModel> _models = new List<HomeModel>();
    JsonDecoder decoder = new JsonDecoder();

    List mapData = decoder.convert(json)['list'];

    mapData.forEach((obj) {
      print('每个数据源' + obj['name']);
      HomeModel model = new HomeModel(
          name: obj['name'],
          cname: obj['cname'],
          size: obj['size'],
          salary: obj['salary'],
          userName: obj['username'],
          title: obj['title']);
      _models.add(model);
    });
    return _models;
  }
}