import 'package:flutter/material.dart';
import 'page/First Page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text("Material Design"),
        backgroundColor: Colors.redAccent,
      ),

      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(accountName: null,
                accountEmail: null,
              decoration: new BoxDecoration(
                color: Colors.redAccent
              ),
            ),
            
            new ListTile(
              title: new Text("First Page"),
              leading: new Icon(Icons.print),

              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext c)=>First()));
              },

            ),
            new ListTile(
              title: new Text("Second Page"),
              leading: new Icon(Icons.title),

              onTap: (){
                Navigator.of(context).pop();
              },

            ),
            new ListTile(
              title: new Text("Third Page"),
              leading: new Icon(Icons.alarm),

              onTap: (){
                Navigator.of(context).pop();
              },
            ),
            new Divider(
              height: 10.0,
              color: Colors.red,
            ),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: (){
                Navigator.of(context).pop();
              },
            )
            
            
            
          ],
        ),
      ),

    );
  }
}
