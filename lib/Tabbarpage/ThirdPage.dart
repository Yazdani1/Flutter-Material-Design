import 'package:flutter/material.dart';
import 'package:flutter_app9/Data.dart';

class Third extends StatefulWidget {
  @override
  _ThirdState createState() => new _ThirdState();
}

class _ThirdState extends State<Third> {
  final List<String>listof=["Product","Online","Product","Food","Android","Flutter","Jam"];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(

        child: new ListView.builder(
          itemBuilder: (BuildContext c,int index)=>Data(this.listof[index]),
          itemCount: this.listof.length,
          scrollDirection: Axis.vertical,

        ),
      ),
    );
  }
}
