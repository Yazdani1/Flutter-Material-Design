import 'package:flutter/material.dart';

class Third extends StatefulWidget {
  @override
  _ThirdState createState() => new _ThirdState();
}

class _ThirdState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text("Fourth Page"),
      ),
    );
  }
}
