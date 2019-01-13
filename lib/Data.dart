import 'package:flutter/material.dart';

class Data extends StatelessWidget {

  final String Name;
  Data(this.Name);

  @override
  Widget build(BuildContext context) {
    return new Card(
      elevation: 6.0,
      margin: EdgeInsets.all(10.0),
      child: new Container(
        margin: EdgeInsets.all(10.0),
        width: 200.0,
        child: new Row(
          children: <Widget>[
            new CircleAvatar(
              child: new Text(Name[0]),
              backgroundColor: Colors.redAccent,
              foregroundColor: Colors.white,
            ),
            new Padding(padding: EdgeInsets.all(10.0)),

            new Text(Name,style: TextStyle(fontSize: 20.0),)

          ],
        ),

      ),
    );
  }
}
