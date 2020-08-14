import 'package:flutter/material.dart';
class MyHorizontalListApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final title="flutter horizontal list";
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 25.0),
          height: 150.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 150.0,
                color: Colors.blue,
                child: new Stack(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text('Home'),
                    )
                  ],
                ),
              ),
              Container(
                width: 148.0,
                color: Colors.green,
                child: new Stack(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.camera_alt),
                      title: Text('Camera'),
                    ),
                  ],
                ),
              ),
              Container(
                width: 148.0,
                color: Colors.yellow,
                child: new Stack(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text('Phone'),
                    ),
                  ],
                ),
              ),
              Container(
                width: 148.0,
                color: Colors.red,
                child: new Stack(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.map),
                      title: Text('Map'),
                    ),
                  ],
                ),
              ),
              Container(
                width: 148.0,
                color: Colors.orange,
                child: new Stack(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text('Setting'),
                    ),
                  ],
                ),
              ),
            ],
          ),

        ),
      ),
    );
    throw UnimplementedError();
  }
  
}