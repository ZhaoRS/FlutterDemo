import 'package:flutter/material.dart';
import 'package:flutter_app/Order/OrderListItem.dart';
import 'package:flutter_app/Order/OrderModel.dart';
import 'package:flutter_app/Detial/DetialPage.dart';


class OrderList extends StatefulWidget {
  @override
  OrderListState createState() => new OrderListState();
}

class OrderListState extends State <OrderList> {

  List<OrderModel> _models = [];




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
    OrderModel model = _models[index];
    print(index);

    var listItem = new InkWell(
      onTap: () => navOrderDetial(model, index),
      child: OrderListItem(model: model,),
    );
    return listItem;
  }




  void getJsonList(){

    setState(() {
      _models = OrderModel.fromJson("""
        {
          "list":[
             {
                "name": "老张",             
                "location": "老张",
                "logo": "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566729042607&di=49536e72ff749e57942071b20d3fdb83&imgtype=0&src=http%3A%2F%2Fpics3.baidu.com%2Ffeed%2F80cb39dbb6fd5266cf6c3802c9a1bd2ed507369a.jpeg%3Ftoken%3D187e8633836f52e1cecb4216b651efad%26s%3D52927487026036B16434988903007023",
                "type": "学习学习",
                "size": "机啊回来了",
                "employee": "肯德基爱了就爱就好啦就好了",
                "hot": "老张",
                "count": "电动车",
                "inc": "路费就阿里阿卡丽解放后来UK了几hlj接口会路费就阿里阿卡丽解放后来UK了几习"
             },
             {
                "name": "老张",             
                "location": "老张",
                "logo": "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566729042607&di=49536e72ff749e57942071b20d3fdb83&imgtype=0&src=http%3A%2F%2Fpics3.baidu.com%2Ffeed%2F80cb39dbb6fd5266cf6c3802c9a1bd2ed507369a.jpeg%3Ftoken%3D187e8633836f52e1cecb4216b651efad%26s%3D52927487026036B16434988903007023",
                "type": "学习学习",
                "size": "机啊回来了",
                "employee": "肯德基爱了就爱就好啦就好了",
                "hot": "老张",
                "count": "电动车",
                "inc": "学习学习"
             },
             {
                "name": "老张",             
                "location": "老张",
                "logo": "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566729042607&di=f3c2109952c551e3dab1b9019a1bea56&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F01b44b5d511452a8012187f4acf159.jpg%401280w_1l_2o_100sh.jpg",
                "type": "学习学习",
                "size": "机啊回来了",
                "employee": "肯德基爱了就爱就好啦就好了",
                "hot": "老张",
                "count": "电动车",
                "inc": "学习学习"
             },
             {
                "name": "老张",             
                "location": "老张",
                "logo": "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566729042607&di=f3c2109952c551e3dab1b9019a1bea56&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F01b44b5d511452a8012187f4acf159.jpg%401280w_1l_2o_100sh.jpg",
                "type": "学习学习",
                "size": "机啊回来了",
                "employee": "肯德基爱了就爱就好啦就好了",
                "hot": "老张",
                "count": "电动车",
                "inc": "会路费就阿里阿卡丽解放后来UK了几"
             },
             {
                "name": "老张",             
                "location": "老张",
                "logo": "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566729042607&di=f3c2109952c551e3dab1b9019a1bea56&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F01b44b5d511452a8012187f4acf159.jpg%401280w_1l_2o_100sh.jpg",
                "type": "学习学习",
                "size": "机啊回来了",
                "employee": "肯德基爱了就爱就好啦就好了",
                "hot": "老张",
                "count": "电动车",
                "inc": "告预计花岗岩"
             }
          ]
         }
      """);
      print('出来了函数getJsonList' + String.fromCharCode(_models.length));
    });
  }


  navOrderDetial(OrderModel model, int index){
    Navigator.of(context).push(new PageRouteBuilder(
      opaque: false,
        pageBuilder: (BuildContext context, _, __) {
          return new DetialPage(model);
        },
      transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
        return new FadeTransition(
          opacity: animation,
          child: SlideTransition(position: Tween<Offset>(
            begin: Offset(0.0, 1.0),
            end: Offset.zero,
          ).animate(animation), child: child),
        );
      }
    ));
  }

}