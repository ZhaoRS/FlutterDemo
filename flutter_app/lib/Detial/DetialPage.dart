import 'package:flutter/material.dart';
import 'package:flutter_app/Detial/Detial.dart';
import 'package:flutter_app/Detial/DetialBottomView.dart';
import 'package:flutter_app/Detial/DetialInfo.dart';
import 'package:flutter_app/Order/OrderModel.dart';
import 'package:flutter_app/Component/DotsIndicator.dart';

const double _kAppBarHeight = 256.0;

class DetialPage extends StatefulWidget {

  final OrderModel orderModel;
  DetialPage(this.orderModel);

  @override
  DetialPageState createState()=> new DetialPageState();

}

class DetialPageState extends State<DetialPage> with TickerProviderStateMixin {

  List<Tab> tabs;

  List<Widget> imagePages;

  TabController controller;

  List<String> urls = [
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566731512285&di=e4ee77ff1df7d393bc8ef64768dd8b24&imgtype=0&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farticle%2F6405ea13bfccd8ce87c5ec222d680f2399c72818.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566731558356&di=6a74f6d1b84e6c8350f9c3f630c53f34&imgtype=0&src=http%3A%2F%2Finews.gtimg.com%2Fnewsapp_ls%2F0%2F9729117048_640330%2F0',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566731590566&di=150ab9ac5fb3e5e4aaa026559fa47cbf&imgtype=0&src=http%3A%2F%2Fimg.1272.cn%2Fimages%2F20190117%2Fbfe5b90abff44402827209b6c23b3096.jpeg'
  ];

  Widget detialTabContent;
  VoidCallback onchanged;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();

    if(!urls.isEmpty) {
      imagePages = <Widget>[];
      urls.forEach((String url){
        imagePages.add(
          Container(
            color: Colors.black.withAlpha(900),
            child: ConstrainedBox(
              constraints: BoxConstraints.expand(),
              child: Image.network(
                url,
                fit: BoxFit.cover,
                height: _kAppBarHeight,
              ),
            ),
          )
        );
      });
    }

    tabs = [
      new Tab(text: '商品详情',),
      new Tab(text: '使用说明',),

    ];

    detialTabContent = new Detial(widget.orderModel.inc);
    controller = TabController(length: tabs.length, vsync: this);

    onchanged() {
      setState(() {
        if(currentIndex == 0) {
          detialTabContent = new Detial(widget.orderModel.inc);
        } else {
          print('切换了detialTabContent' + String.fromCharCode(currentIndex));
          detialTabContent = new DetialBottomView();
        }
        currentIndex = this.controller.index;
      });
    };
    controller.addListener(onchanged);

  }

  @override
  void dispose() {
    controller.removeListener(onchanged);
    controller.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 242, 245),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                new SizedBox.fromSize(
                  size: const Size.fromHeight(_kAppBarHeight),
                  child: IndicatorViewPager(pages: imagePages),
                ),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      new DetialInfo(widget.orderModel),
                      new Divider(),
                      new TabBar(
                        indicatorWeight: 3.0,
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelStyle: TextStyle(fontSize: 16.0),
                        labelColor: Colors.black,
                        controller: controller,
                        tabs: tabs,
                        indicatorColor: Colors.yellow,
                      )
                    ],
                  ),
                ),
                detialTabContent

              ],
            ),
          ),
          Positioned(
            top: 10.0,
            left: -10.0,
            child: Container(
              padding: const EdgeInsets.all(15.0),
              child: BackButton(color: Colors.white,),
            ),
          )
        ],
      ),
    );
  }


}