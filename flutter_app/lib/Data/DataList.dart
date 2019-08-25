import 'package:flutter/material.dart';
import 'package:flutter_app/Data/DataListItem.dart';
import 'package:flutter_app/Data/DataModel.dart';


class DataList extends StatefulWidget {
  @override
  DataListState createState() => new DataListState();
}

class DataListState extends State <DataList> {

  List<DataModel> _models = [];




  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    this.getJsonList();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print('开始创建List');
    return new Scaffold(
        backgroundColor:  Colors.white,
        appBar: new AppBar(
          elevation: 0.0,
          backgroundColor: Color.fromARGB(255, 229, 178, 103),
          title: new Text('iOS',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ),
        body: ListView.builder(
          itemBuilder: buildListItem,
          itemCount: _models.length,
        )

    );
  }

  Widget buildListItem(BuildContext context, int index) {
    DataModel model = _models[index];
    print(index);
    print('断电调试' + model.msg );

    var listItem = new InkWell(
      onTap: (){
        showDialog(context: context, child: new AlertDialog(
            content : new Text(
              "敬请期待",
              style: new TextStyle(fontSize: 20.0),
            )

        ));
      },
      child: DataListItem(model: model,),
    );
    return listItem;
  }



  void getJsonList(){

    setState(() {
      _models = DataModel.fromJson("""
        {
          "list":[
             {
                "name": "老张",
                "avatar": "电动车",
                "componary": "学习学习",
                "position": "机啊回来了",
                "msg": "肯德基爱了就爱就好啦就好了"
             },
             {
                "name": "老张",
                "avatar": "电动车",
                "componary": "学习学习",
                "position": "机啊回来了",
                "msg": "肯德基爱了就爱就好啦就好了"
             },
             {
                "name": "老张",
                "avatar": "电动车",
                "componary": "学习学习",
                "position": "机啊回来了",
                "msg": "肯德基爱了就爱就好啦就好了"
             },
             {
                "name": "老张",
                "avatar": "电动车",
                "componary": "学习学习",
                "position": "机啊回来了",
                "msg": "肯德基爱了就爱就好啦就好了"
             },
             {
                "name": "老张",
                "avatar": "电动车",
                "componary": "学习学习",
                "position": "机啊回来了",
                "msg": "肯德基爱了就爱就好啦就好了"
             }
          ]
         }
      """);
      print('出来了函数getJsonList' + String.fromCharCode(_models.length));
    });
  }
}