import 'package:flutter/material.dart';
import 'package:flutter_app9/Data.dart';

class Second extends StatefulWidget {
  @override
  _SecondState createState() => new _SecondState();
}

class _SecondState extends State<Second> {
  final List<String>listof=["Apple","ios","Product","Food","Android","Flutter","Jam"];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: new Container(
        height: 150.0,
        child: new ListView.builder(
          itemBuilder: (BuildContext c,int index)=>Data(this.listof[index]),
          itemCount: this.listof.length,
          scrollDirection: Axis.horizontal,

        ),
      ),

    );
  }
}
