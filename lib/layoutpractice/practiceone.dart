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
return Container(
  margin: EdgeInsets.all(16.0),
  padding: EdgeInsets.all(16.0),
  decoration: BoxDecoration(
    color: Colors.purple[900],
    border: Border.all(),
    borderRadius: BorderRadius.all(Radius.circular(3.0)),
  ),
  child: Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.favorite,color: Colors.green,),
          ),
          Text(
            'BEAMS',
            style: TextStyle(
              color: Colors.white
            ),
          )
        ],
      ),
      Padding(
        padding: EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 0,
        ),
        child: Text('Send programmable push notifications to iOS and Android devices with delivery and open rate tracking built in',
        style: TextStyle(
          color: Colors.white,
        ),),

      ),
      Row(
        children: <Widget>[
          Text('Explore beams',
            style: TextStyle(
              color: Colors.green,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Icon(Icons.arrow_forward,
            color: Colors.green,),
          )
        ],
      )
    ],
  ),

);

}