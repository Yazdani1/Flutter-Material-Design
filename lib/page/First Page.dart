import 'package:flutter/material.dart';
import 'package:flutter_app9/Tabbarpage/Second Page.dart' as sp;
import 'package:flutter_app9/Tabbarpage/ThirdPage.dart' as tp;
import 'package:flutter_app9/Tabbarpage/FourthPage.dart' as fp;
import 'package:flutter_app9/Tabbarpage/FifthPage.dart' as fip;


class First extends StatefulWidget {
  @override
  _FirstState createState() => new _FirstState();
}

class _FirstState extends State<First>with SingleTickerProviderStateMixin {

  TabController tabController;

  @override
  void initState() {
    tabController=new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text("Tab Bar"),
        backgroundColor: Colors.redAccent,

        bottom: new TabBar(
          controller: tabController,
          indicatorColor: Colors.green,
          indicatorWeight: 4.0,
          indicatorPadding: EdgeInsets.all(2.0),
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.title),),
            new Tab(icon: new Icon(Icons.album),),
            new Tab(icon: new Icon(Icons.cake),),
            new Tab(icon: new Icon(Icons.print),)
          ],
        ),
      ),//Appbar

      body: new TabBarView(
        controller: tabController,
        children: <Widget>[
          new sp.Second(),
          new tp.Third(),
          new fp.Fourth(),
          new fip.Fifth()
        ],
      ),


    );
  }
}
