import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class LayoutPracticeOne extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Layout practice One"),
        ),
        body:  myLayoutWidget(),
      ),
    );
    throw UnimplementedError();
  }
  
}

Widget myLayoutWidget() {
  /*return Container(
    margin: EdgeInsets.all(30.0),
    padding: EdgeInsets.all(10.0),
    alignment: Alignment.topCenter,
    width: 200,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.green,
      border: Border.all()
    ),
    child: Text("Hello",style: TextStyle(fontSize: 30),),
  );*/
  /*return Row(
    children: <Widget>[
      Expanded(
        flex: 7,
        child: Container(
          color: Colors.green,
        ),
      ),
      Expanded(
        flex: 3,
        child: Container(
          color:Colors.yellow,
        ),
      )

    ],
  );*/
  return Stack(
    alignment: Alignment.bottomCenter,
    children: <Widget>[
      Image.asset('assets/imageone.png'),
      Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Stack example',
          style: TextStyle(fontSize: 30),
        ),
      )
    ],
  );
}