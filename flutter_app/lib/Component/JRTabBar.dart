import 'package:flutter/material.dart';
import 'package:flutter_app/Component/IconTab.dart';
import 'package:flutter_app/Home/HomePage.dart';
import 'package:flutter_app/Data/DataList.dart';
import 'package:flutter_app/Order/OrderList.dart';

class JRTabBar extends StatefulWidget {
  @override
  JRTabBarState createState() => new JRTabBarState();
}

Color kPrimaryColor = new  Color.fromARGB(255, 229, 178, 103);
const double _kTabTextSize = 11.0;
const int INDEX_HOME = 0;
const int INDEX_ORDER = 1;
const int INDEX_DATA = 2;
const int INDEX_MINE = 3;

class JRTabBarState extends State<JRTabBar> with SingleTickerProviderStateMixin {


  int _currentIndex = 0;
  TabController _controller;
  VoidCallback onChanged;


  @override
  void initState() {
    super.initState(); //结束后要初始化选项卡
    _controller =
    new TabController(initialIndex: _currentIndex, length: 4, vsync: this);
    onChanged = () {
      setState(() {
        _currentIndex = this._controller.index;
      });
    };

    _controller.addListener(onChanged);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Scaffold(
      body: new TabBarView(
        children: <Widget>[
          new HomePage(),
          new OrderList(),
          new DataList(),
          new HomePage(),
        ],
        controller: _controller,
      ),
      bottomNavigationBar: new Material(
        color: Colors.white,
        child: new TabBar(
          controller: _controller,
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle:  TextStyle(fontSize:  _kTabTextSize),

            tabs: <IconTab>[
          new IconTab(
              icon: _currentIndex == INDEX_HOME
                  ? "assets/images/tabbar_home_selected@2x.png"
                  : "assets/images/tabbar_home@2x.png",
              text: "首页",
              color: _currentIndex == INDEX_HOME ? kPrimaryColor : Colors
                  .grey[900]
          ),
          new IconTab(
              icon: _currentIndex == INDEX_ORDER
                  ? "assets/images/tabbar_order_selected@2x.png"
                  : "assets/images/tabbar_order@2x.png",
              text: "订单",
              color: _currentIndex == INDEX_ORDER ? kPrimaryColor : Colors
                  .grey[900]
          ),
          new IconTab(
              icon: _currentIndex == INDEX_DATA
                  ? "assets/images/tabbar_data_selected@2x.png"
                  : "assets/images/tabbar_data@2x.png",
              text: "数据",
              color: _currentIndex == INDEX_DATA ? kPrimaryColor : Colors
                  .grey[900]
          ), new IconTab(
              icon: _currentIndex == INDEX_MINE
                  ? "assets/images/tabbar_mine_selected@2x.png"
                  : "assets/images/tabbar_mine@2x.png",
              text: "个人",
              color: _currentIndex == INDEX_MINE ? kPrimaryColor : Colors
                  .grey[900]
          ),

        ]),
      ),
    );
  }
}
