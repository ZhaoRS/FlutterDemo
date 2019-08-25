import 'package:flutter/material.dart';
import 'package:flutter_app/Home/Item/HomeListItem.dart';
import 'package:flutter_app/Home/HomeModel.dart';


class HomePage extends StatefulWidget {
  @override
  HomPageState createState() => new HomPageState();
}

class HomPageState extends State <HomePage> {

  List<HomeModel> _models = [];




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
    HomeModel model = _models[index];
    print(index);
    print('断电调试' + model.title );

    var listItem = new InkWell(
      onTap: (){
        showDialog(context: context, child: new AlertDialog(
          content : new Text(
              "敬请期待",
              style: new TextStyle(fontSize: 20.0),
          )

        ));
      },
      child: HomeListItem(model: model,),
    );
    return listItem;
  }



  void getJsonList(){

    setState(() {
      _models = HomeModel.getfromJson("""
        {
          "list":[
             {
                "name": "奥迪A1",
                "cname": "电动车",
                "size": "5座",
                "salary": "20万",
                "username": "Claire",
                "title": "XXXX"
             },
             {
                "name": "奥迪A1",
                "cname": "电动车",
                "size": "5座",
                "salary": "20万",
                "username": "Claire",
                "title": "XXXX"
             },
             {
                "name": "奥迪A1",
                "cname": "电动车",
                "size": "5座",
                "salary": "20万",
                "username": "Claire",
                "title": "XXXX"
             },
             {
                "name": "奥迪A1",
                "cname": "电动车",
                "size": "5座",
                "salary": "20万",
                "username": "Claire",
                "title": "XXXX"
             },
             {
                "name": "奥迪A1",
                "cname": "电动车",
                "size": "5座",
                "salary": "20万",
                "username": "Claire",
                "title": "XXXX"
             },
             {
                "name": "奥迪A1",
                "cname": "电动车",
                "size": "5座",
                "salary": "20万",
                "username": "Claire",
                "title": "XXXX"
             },
             {
                "name": "奥迪A1",
                "cname": "电动车",
                "size": "5座",
                "salary": "20万",
                "username": "Claire",
                "title": "XXXX"
             },
             {
                "name": "奥迪A1",
                "cname": "电动车",
                "size": "5座",
                "salary": "20万",
                "username": "Claire",
                "title": "XXXX"
             }
          ]
         }
      """);
      print('出来了函数getJsonList' + String.fromCharCode(_models.length));
    });
  }
}